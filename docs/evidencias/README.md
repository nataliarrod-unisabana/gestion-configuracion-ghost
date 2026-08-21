# Evidencias del proyecto

Capturas de la ejecución real de los controles implementados, ordenadas por el
flujo del proceso: primero el estado inicial y la trazabilidad, luego el control
de cambios, después la automatización, y finalmente el bloqueo efectivo de los
controles.

## Estado inicial y trazabilidad

| Archivo | Qué demuestra |
|---------|---------------|
| 01_estado_inicial_repositorio.png | Estado del repositorio antes del trabajo: 3 ramas, 0 tags, sin releases |
| 02_issues_trazabilidad.png | Los 13 issues del proyecto, con los enlaces a sus pull requests |
| 03_issue_cerrado_automaticamente.png | Cadena completa: issue, commits que lo referencian, pull request y cierre automático |
| 04_commits_atomicos_ci3.png | Siete commits atómicos del CI-3, cada uno referenciando su issue |

## Control de cambios

| Archivo | Qué demuestra |
|---------|---------------|
| 05_pr_revision_solicitada.png | Solicitud de revisión a los integrantes del equipo |
| 06_pr_aprobacion_humana.png | Aprobación humana exigida por las reglas de protección de rama |
| 07_pr_doble_aprobacion.png | Pull request con dos aprobaciones y todos los checks en verde |
| 08_pr_integrado.png | Integración a develop con los revisores identificados |
| 21_rulesets_proteccion.png | Los rulesets proteccion-main y proteccion-develop activos, con tres reglas cada uno |
| 21b_ruleset_detalle.png | Reglas de proteccion-main, con "Require a pull request before merging" y "Restrict deletions" activas |
| 21c_pr_release_bloqueado.png | Pull request de release contra main con los ocho checks en verde y el merge bloqueado por falta de aprobación |

## Automatización de integración continua

| Archivo | Qué demuestra |
|---------|---------------|
| 09_ci3_pipeline_verde.png | Los tres jobs del CI-3 y el del agente, todos en verde |
| 18_actions_workflows.png | Los siete workflows registrados en la pestaña Actions, incluido el de Release |
| 18b_actions_historial_ejecuciones.png | Historial de 38 ejecuciones, con el workflow, la rama y el autor de cada una |
| 19_artefactos_descargables.png | Artefacto casper-theme publicado por el pipeline, con tamaño y digest sha256 |
| 19b_pipeline_casper_pasos.png | Pasos del job del CI-1, desde la instalación de dependencias hasta la validación con gscan |
| 19c_ci_casper_historial.png | Ejecuciones del CI-1 sobre la rama de feature y sobre develop tras el merge |
| 19d_artefacto_source.png | Artefacto source-theme publicado por el pipeline del CI-2, con tamaño y digest sha256 |
| 25_pipeline_release.png | Ejecución del workflow Release disparada por el push del tag v1.0.0, en verde |

## Revisión automática por agente de IA

| Archivo | Qué demuestra |
|---------|---------------|
| 10_agente_revision_ci3.png | El agente evaluando el CI-3 contra las cinco reglas del equipo |
| 11_agente_revision_ci1_casper.png | El agente revisando el trabajo de otro integrante |
| 12_agente_hallazgo_seguridad_inyeccion.png | El agente detectando una vulnerabilidad de inyección de comandos, con la corrección propuesta |
| 13_agente_revision_pr_invalido.png | El agente identificando un pull request que incumple varias reglas del equipo |

## Controles de política bloqueando la integración

| Archivo | Qué demuestra |
|---------|---------------|
| 14_commit_lint_check_fallido.png | El control de convención de commits impidiendo el merge |
| 15_commit_lint_log_rechazo.png | Log del rechazo, con el mensaje que indica el formato esperado |
| 16_branch_lint_rechazo.png | El control de nomenclatura de ramas rechazando un nombre inválido |
| 20_branch_lint_run_fallido.png | Ejecución del control sobre la rama prueba_rama_invalida, en estado Failure con exit code 1 |

## Estado del repositorio

| Archivo | Qué demuestra |
|---------|---------------|
| 17_estructura_repositorio.png | Estructura del repositorio con los tres configuration items y sus artefactos |
| 22_grafo_ramas.png | Grafo de ramas con main, develop y el tag v1.0.0 sobre el mismo commit, y los merges de las ramas de feature |

## Versionamiento y release

| Archivo | Qué demuestra |
|---------|---------------|
| 23_tag_v100.png | El tag v1.0.0 sobre el commit 500d563, con sus enlaces de descarga |
| 24_release_publicada.png | Release v1.0.0 publicada por github-actions, con las notas de versión generadas automáticamente |
| 24b_release_assets.png | Adjuntos de la release: casper.zip y source.zip con sus digests sha256 |
