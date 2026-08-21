# Guía de revisión del proyecto

Este repositorio implementa una estrategia de gestión de configuración sobre tres
configuration items de Ghost. Al revisar un pull request, verifica lo siguiente.

## Convención de commits

Los mensajes deben seguir el formato `tipo(alcance): descripción (#issue)`.

- Tipos válidos: feat, fix, docs, ci, build, test, refactor, chore
- Alcances válidos: casper, source, config, docs, repo
- La descripción debe tener al menos 10 caracteres
- Debe referenciar el número de un issue

## Independencia de los configuration items

Cada CI vive en su propia carpeta y tiene su propio pipeline:

- `casper/` es el CI-1
- `source/` es el CI-2
- `config-entorno/` es el CI-3

Señala cualquier cambio que mezcle archivos de más de un CI en el mismo pull
request, porque rompe la independencia de sus ciclos de vida.

## Seguridad de la configuración

- Ningún archivo `.env` con valores reales debe versionarse
- Las credenciales, tokens o contraseñas nunca van en el código ni en los workflows
- Los valores sensibles se declaran en `.env.example` con el marcador
  `CAMBIAR_ESTE_VALOR`, nunca con un valor real

## Workflows de GitHub Actions

- Las acciones externas deben estar fijadas a una versión, no a una rama
- Cada workflow de un CI debe tener filtros por ruta que lo limiten a su carpeta
- Los permisos deben declararse explícitamente y ser los mínimos necesarios

## Gobernanza de agentes

Según la política definida en `AGENTS.md`, un agente puede revisar y sugerir,
pero no aprobar pull requests ni modificar workflows de CI/CD. Señala cualquier
cambio que contradiga esa política.