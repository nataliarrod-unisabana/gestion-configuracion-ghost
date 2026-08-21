# Pipelines de los temas y validaciones de políticas

Documento de soporte del README general: describe el diseño de los pipelines
de integración continua de los configuration items CI-1 (Casper) y CI-2
(Source), la validación con gscan, los artefactos generados y las políticas
de calidad automatizadas que el equipo definió sobre el repositorio.

## 1. Los temas como configuration items

Un configuration item es cualquier elemento bajo control de configuración
que tiene identidad propia, ciclos de vida independientes y relaciones de
trazabilidad definidas. Los dos temas oficiales de Ghost cumplen esa
definición y por eso el equipo los trata como CIs separados:

| CI | Carpeta | Tema | Versión propia |
|----|---------|------|----------------|
| CI-1 | `casper/` | Casper, tema por defecto de Ghost | 5.12.1 |
| CI-2 | `source/` | Source, segundo tema oficial | 1.7.1 |

Cada tema conserva su propio versionamiento semántico heredado de Ghost,
independiente del versionamiento del repositorio del equipo (`vX.Y.Z`):
Casper puede avanzar de 5.12.1 a 5.13.0 sin que Source cambie, y al revés.
Esa independencia es justamente lo que se protege al aislarlos en carpetas
distintas, cada una con su `package.json`, su lockfile y su pipeline propio.
Un cambio en un tema nunca obliga a revalidar ni reempaquetar el otro.

## 2. Arquitectura del pipeline de temas

Ambos pipelines (`ci-casper.yml` y `ci-source.yml`) comparten la misma
arquitectura de ocho pasos:

| # | Paso | Función |
|---|------|---------|
| 1 | checkout | Descarga el código del repositorio en el runner |
| 2 | pnpm/action-setup | Instala pnpm leyendo la versión desde el `package.json` del propio tema (`package_json_file`) |
| 3 | setup-node | Instala Node.js 22 y activa la caché de dependencias |
| 4 | pnpm install --frozen-lockfile | Instala exactamente las dependencias del lockfile |
| 5 | pnpm build | Compila CSS, JavaScript y archivos de idioma |
| 6 | pnpm zip | Empaqueta el tema compilado en formato distribuible |
| 7 | gscan --fatal --verbose | Valida compatibilidad con las reglas oficiales de Ghost |
| 8 | upload-artifact | Publica el zip como artefacto descargable del run |

El orden responde a un principio de falla temprana: primero se prepara un
entorno reproducible (pasos 1-4, los más baratos de repetir), luego se
construye (5-6) y solo al final se valida y publica (7-8). Si algo falla,
falla antes de gastar tiempo en pasos posteriores. La instalación con
`--frozen-lockfile` garantiza que todos los entornos usen versiones
idénticas de dependencias: el paquete que valida gscan es siempre producto
del mismo árbol de dependencias, no de una resolución casual del día.

Los pipelines se disparan ante pushes a `develop` o `main`, ante pull
requests que toquen su carpeta, y manualmente (`workflow_dispatch`).

## 3. La validación con gscan

gscan es la herramienta oficial de Ghost para verificar que un tema cumple
las reglas de la plataforma. Revisa la estructura obligatoria de archivos,
la validez de las plantillas Handlebars, el uso de APIs vigentes (detectando
funciones obsoletas o eliminadas) y reglas de rendimiento y seguridad que
Ghost exige a los temas publicados.

Se ejecuta en modo estricto (`--fatal`): cualquier error marca el job como
fallido, y `--verbose` entrega el detalle por regla. Es el control de
calidad clave porque un tema que no pasa gscan no puede instalarse en un
Ghost en producción: validar antes de empaquetar evita distribuir artefactos
defectuosos y convierte la compatibilidad con la plataforma en una condición
objetiva y verificable, no en una opinión del revisor.

## 4. Los artefactos generados

El resultado de cada corrida es un zip publicado como artefacto del run
(`casper-theme`, `source-theme`), con retención de 30 días. El zip contiene
el tema ya compilado y listo para instalar: plantillas `.hbs`, assets
construidos, archivos de idioma y el manifiesto `package.json`. Su propósito
es doble: es el formato distribuible que Ghost acepta subir desde su panel
de administración, y funciona como evidencia verificable del pipeline —
cualquier miembro del equipo puede descargar el paquete exacto que produjo
una corrida concreta y auditarlo sin reconstruir nada localmente.

## 5. Los pipelines de validación de políticas

Además de los pipelines técnicos, el equipo automatizó dos políticas
propias acordadas previamente:

- **branch-lint** valida que toda rama de origen de un pull request hacia
  `develop` o `main` cumpla la nomenclatura GitFlow
  (`feature/`, `release/vX.Y.Z`, `hotfix/`). Si no cumple, el job falla
  mostrando los formatos válidos y GitHub bloquea el merge.
- **commit-lint** valida que los mensajes sigan Conventional Commits con
  alcance e issue referenciado: `tipo(alcance): descripción (#issue)`.

La decisión de automatizarlas parte de un principio simple: una política
que nadie verifica automáticamente no se cumple de forma confiable; la
revisión humana complementa, pero olvida y es inconsistente. Al convertirlas
en jobs, el cumplimiento dejó de depender de la disciplina individual y pasó
a ser condición objetiva de integración. Un ejemplo concreto: durante el
desarrollo, la revisión automática sugirió endurecer el branch-lint pasando
`github.head_ref` por variable de entorno (`env:`) en lugar de interpolarlo
directo en el script, cerrando la puerta a la inyección de comandos — el
nombre de una rama es entrada de usuario y se trata como tal.

## 6. Filtros por ruta

Cada pipeline declara filtros `paths` acotados a su carpeta y a su propio
archivo de workflow: `casper/**` para el CI-1, `source/**` para el CI-2.
Esto aporta tres cosas al control de configuración:

1. **Independencia real de ciclos de vida**: un cambio en Source jamás
   dispara el pipeline de Casper, igual que un cambio en Casper no obliga a
   revalidar Source.
2. **Retroalimentación rápida**: los autores reciben resultados relevantes
   en minutos, sin ruido de corridas ajenas a su cambio.
3. **Trazabilidad limpia**: cada corrida corresponde exactamente al CI que
   cambió, lo que simplifica auditar qué versión de qué tema produjo cada
   artefacto.

Es la materialización práctica del acuerdo del equipo de trabajar en
carpetas separadas: la estructura del repositorio, los permisos de edición
y los disparadores del CI cuentan la misma historia de independencia.
