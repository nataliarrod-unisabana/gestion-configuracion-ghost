# Procedencia de los configuration items

| CI | Origen | Versión base | Fecha de incorporación |
|----|--------|--------------|------------------------|
| casper/ | https://github.com/TryGhost/Casper | 5.12.1 | 18/08/2026 |
| source/ | https://github.com/TryGhost/Source | 1.7.1 | 18/08/2026 |
| config-entorno/ | Elaboración propia del equipo | 1.0.0 | 18/08/2026 |

Los CI casper/ y source/ fueron incorporados desde los repositorios oficiales de
Ghost, donde figuran como submódulos de Git del monorepo principal (patrón
Third Party Codeline). Se eliminó su historial de Git original para integrarlos
como carpetas del repositorio del equipo, conservando su código y su
versionamiento semántico propio.