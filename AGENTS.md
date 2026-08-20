# Política de gobernanza para agentes de IA

## Contexto

El proyecto Ghost incorpora en sus repositorios archivos de documentación
dirigidos a agentes de IA (`AGENTS.md` y `CLAUDE.md` en Casper y Source). Esto
evidencia que los agentes automatizados ya participan en el flujo de desarrollo
de proyectos reales.

Desde la perspectiva de gestión de configuración, un agente capaz de modificar
código es un actor más dentro del proceso de control de cambios y, por tanto,
requiere un rol y unos permisos definidos, igual que un desarrollador humano.

## Alcance de los agentes en este repositorio

| Acción | Permitido | Justificación |
|--------|-----------|---------------|
| Revisar y comentar Pull Requests | Sí | Aporta detección temprana sin autoridad de decisión |
| Sugerir cambios de código | Sí | Las sugerencias las evalúa un revisor humano |
| Aprobar Pull Requests | No | La aprobación es una autoridad de control de cambios reservada a personas |
| Hacer merge a `develop` o `main` | No | La integración a ramas protegidas requiere aprobación humana |
| Modificar los workflows de CI/CD | No | Los pipelines son un CI crítico: un cambio no supervisado comprometería todos los controles |
| Modificar `.env.example` o secretos | No | Riesgo de exposición de configuración sensible |

## Implementación del control

La política declarada en este documento se implementa de forma ejecutable en
`.gemini/styleguide.md`, que traduce estas reglas y las convenciones del equipo
a criterios verificables por el agente de revisión automática en cada pull
request.

## Trazabilidad de las contribuciones de agentes

Todo aporte generado o asistido por un agente debe quedar identificable:

- Los comentarios de revisión automática quedan registrados en el hilo del Pull
  Request con el autor identificado como bot.
- Si un agente genera código que un integrante adopta, el commit debe indicarlo
  en el cuerpo del mensaje: