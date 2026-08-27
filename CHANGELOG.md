# Changelog

## [1.2.0](https://github.com/nataliarrod-unisabana/gestion-configuracion-ghost/compare/v1.1.0...v1.2.0) (2026-08-27)


### Features

* **config:** agrega plantilla versionada de variables de entorno ([#8](https://github.com/nataliarrod-unisabana/gestion-configuracion-ghost/issues/8)) ([f491ce3](https://github.com/nataliarrod-unisabana/gestion-configuracion-ghost/commit/f491ce306839d7598d18da4498a0920121f66051))
* **config:** agrega script de validacion de variables requeridas ([#9](https://github.com/nataliarrod-unisabana/gestion-configuracion-ghost/issues/9)) ([6862fd2](https://github.com/nataliarrod-unisabana/gestion-configuracion-ghost/commit/6862fd2693c261b57b48ce1280b8a15ada107c6a))
* **config:** define imagen de Ghost con version de Node fijada ([#9](https://github.com/nataliarrod-unisabana/gestion-configuracion-ghost/issues/9)) ([454c697](https://github.com/nataliarrod-unisabana/gestion-configuracion-ghost/commit/454c6974d87821106a117e64dba7c74b1f104da1))
* **config:** define servicios de Ghost y MySQL del entorno ([#9](https://github.com/nataliarrod-unisabana/gestion-configuracion-ghost/issues/9)) ([32d1afa](https://github.com/nataliarrod-unisabana/gestion-configuracion-ghost/commit/32d1afa7f19786fd1ddef32d7b380774931aea6a))
* **config:** implementa el CI-3 de configuración de entorno ([4840e9d](https://github.com/nataliarrod-unisabana/gestion-configuracion-ghost/commit/4840e9dce4d6a07b938acfdd60e46c77828a484f))
* **repo:** agrega configuracion de commitlint ([#34](https://github.com/nataliarrod-unisabana/gestion-configuracion-ghost/issues/34)) ([7abfdd5](https://github.com/nataliarrod-unisabana/gestion-configuracion-ghost/commit/7abfdd54ea134338e3871f5ca0cd86496484a096))
* **repo:** automatiza el versionamiento con release-please ([#36](https://github.com/nataliarrod-unisabana/gestion-configuracion-ghost/issues/36)) ([bceb4b6](https://github.com/nataliarrod-unisabana/gestion-configuracion-ghost/commit/bceb4b63c90cc0593dedb9fdea24b4d8c77bf332))


### Bug Fixes

* **repo:** actualiza el modelo del agente de revision ([#12](https://github.com/nataliarrod-unisabana/gestion-configuracion-ghost/issues/12)) ([a016aee](https://github.com/nataliarrod-unisabana/gestion-configuracion-ghost/commit/a016aeee20c0cc98a303e709033f50d2dc17293c))
* **repo:** commitlint solo valida PR hacia develop, no hacia main ([fb2c1c5](https://github.com/nataliarrod-unisabana/gestion-configuracion-ghost/commit/fb2c1c5e991ac832544308affcbef90ce7094dc1))
* **repo:** commitlint solo valida PR hacia develop, no hacia main ([#70](https://github.com/nataliarrod-unisabana/gestion-configuracion-ghost/issues/70)) ([3d91789](https://github.com/nataliarrod-unisabana/gestion-configuracion-ghost/commit/3d917898dd10dda777d66dea0955811a0f1c398c))
* **repo:** completa el comando gscan y el paso de artefacto en theme-ci ([#37](https://github.com/nataliarrod-unisabana/gestion-configuracion-ghost/issues/37)) ([3980dc7](https://github.com/nataliarrod-unisabana/gestion-configuracion-ghost/commit/3980dc7f5a9ec89789c0f1387bf81fe46c12bbdf))
* **repo:** corrige la ubicacion del archivo de dependabot ([#35](https://github.com/nataliarrod-unisabana/gestion-configuracion-ghost/issues/35)) ([633baec](https://github.com/nataliarrod-unisabana/gestion-configuracion-ghost/commit/633baec13c7e1195696f66a19c68e07ce73eeeba))
* **repo:** dispara release.yml desde release-please sin usar PAT ([#80](https://github.com/nataliarrod-unisabana/gestion-configuracion-ghost/issues/80)) ([997d85a](https://github.com/nataliarrod-unisabana/gestion-configuracion-ghost/commit/997d85a305ad817e968729135ad19560bd6285eb))
* **repo:** dispara release.yml desde release-please sin usar PAT (#NN) ([56eab35](https://github.com/nataliarrod-unisabana/gestion-configuracion-ghost/commit/56eab35f58e1b7e43cc838a2606d404ceb0ef2c0))
* **repo:** excluye a dependabot de commitlint ([f24df0b](https://github.com/nataliarrod-unisabana/gestion-configuracion-ghost/commit/f24df0b997ef5a136f3b44e8d58efeaa3c087d53))
* **repo:** excluye a dependabot de commitlint ([659a5b6](https://github.com/nataliarrod-unisabana/gestion-configuracion-ghost/commit/659a5b6357b1048bb43d233662cd279f4e4927b2))
* **repo:** excluye a dependabot de commitlint, igual que en branch-lint (#issue) ([a22b8f0](https://github.com/nataliarrod-unisabana/gestion-configuracion-ghost/commit/a22b8f03a5a569804b75d4e68b7755e240ac6687))
* **repo:** excluye a Dependabot de la validación de nombres de rama ([2e824d7](https://github.com/nataliarrod-unisabana/gestion-configuracion-ghost/commit/2e824d7e492ac04c8f6e9c256879fe3ad0e5dacf))
* **repo:** excluye a dependabot de la validacion de nombres de rama (#NN) ([00ebd8c](https://github.com/nataliarrod-unisabana/gestion-configuracion-ghost/commit/00ebd8c41f46cd838f9709f66f5b2212d92f5842))
* **repo:** release-please apunta explicitamente a main, revierte manifest ([#73](https://github.com/nataliarrod-unisabana/gestion-configuracion-ghost/issues/73)) ([e64ac07](https://github.com/nataliarrod-unisabana/gestion-configuracion-ghost/commit/e64ac07eb41b7c4fa185f50accdd0d63b2f3a485))
* **repo:** release-please apunta explicitamente a main, revierte manifest ([#73](https://github.com/nataliarrod-unisabana/gestion-configuracion-ghost/issues/73)) ([2b0b0eb](https://github.com/nataliarrod-unisabana/gestion-configuracion-ghost/commit/2b0b0ebb8c494ac0815145efd370f59771193a9f))
* **repo:** restaura name, on y permissions del workflow ([690b63f](https://github.com/nataliarrod-unisabana/gestion-configuracion-ghost/commit/690b63fd19b8c072f4240dff9354ba6c4e5e1363))
* **repo:** usa el modelo gemini-3.6-flash en el agente ([#12](https://github.com/nataliarrod-unisabana/gestion-configuracion-ghost/issues/12)) ([4557241](https://github.com/nataliarrod-unisabana/gestion-configuracion-ghost/commit/4557241ec9b8e1ff5de79ab1f7d08f5a578a39ef))

## [1.1.0](https://github.com/nataliarrod-unisabana/gestion-configuracion-ghost/compare/v1.0.1...v1.1.0) (2026-08-26)


### Features

* **repo:** agrega configuracion de commitlint ([#34](https://github.com/nataliarrod-unisabana/gestion-configuracion-ghost/issues/34)) ([7abfdd5](https://github.com/nataliarrod-unisabana/gestion-configuracion-ghost/commit/7abfdd54ea134338e3871f5ca0cd86496484a096))
* **repo:** automatiza el versionamiento con release-please ([#36](https://github.com/nataliarrod-unisabana/gestion-configuracion-ghost/issues/36)) ([bceb4b6](https://github.com/nataliarrod-unisabana/gestion-configuracion-ghost/commit/bceb4b63c90cc0593dedb9fdea24b4d8c77bf332))


### Bug Fixes

* **repo:** commitlint solo valida PR hacia develop, no hacia main ([fb2c1c5](https://github.com/nataliarrod-unisabana/gestion-configuracion-ghost/commit/fb2c1c5e991ac832544308affcbef90ce7094dc1))
* **repo:** commitlint solo valida PR hacia develop, no hacia main ([#70](https://github.com/nataliarrod-unisabana/gestion-configuracion-ghost/issues/70)) ([3d91789](https://github.com/nataliarrod-unisabana/gestion-configuracion-ghost/commit/3d917898dd10dda777d66dea0955811a0f1c398c))
* **repo:** completa el comando gscan y el paso de artefacto en theme-ci ([#37](https://github.com/nataliarrod-unisabana/gestion-configuracion-ghost/issues/37)) ([3980dc7](https://github.com/nataliarrod-unisabana/gestion-configuracion-ghost/commit/3980dc7f5a9ec89789c0f1387bf81fe46c12bbdf))
* **repo:** corrige la ubicacion del archivo de dependabot ([#35](https://github.com/nataliarrod-unisabana/gestion-configuracion-ghost/issues/35)) ([633baec](https://github.com/nataliarrod-unisabana/gestion-configuracion-ghost/commit/633baec13c7e1195696f66a19c68e07ce73eeeba))
* **repo:** dispara release.yml desde release-please sin usar PAT ([#80](https://github.com/nataliarrod-unisabana/gestion-configuracion-ghost/issues/80)) ([997d85a](https://github.com/nataliarrod-unisabana/gestion-configuracion-ghost/commit/997d85a305ad817e968729135ad19560bd6285eb))
* **repo:** dispara release.yml desde release-please sin usar PAT (#NN) ([56eab35](https://github.com/nataliarrod-unisabana/gestion-configuracion-ghost/commit/56eab35f58e1b7e43cc838a2606d404ceb0ef2c0))
* **repo:** excluye a dependabot de commitlint ([f24df0b](https://github.com/nataliarrod-unisabana/gestion-configuracion-ghost/commit/f24df0b997ef5a136f3b44e8d58efeaa3c087d53))
* **repo:** excluye a dependabot de commitlint ([659a5b6](https://github.com/nataliarrod-unisabana/gestion-configuracion-ghost/commit/659a5b6357b1048bb43d233662cd279f4e4927b2))
* **repo:** excluye a dependabot de commitlint, igual que en branch-lint (#issue) ([a22b8f0](https://github.com/nataliarrod-unisabana/gestion-configuracion-ghost/commit/a22b8f03a5a569804b75d4e68b7755e240ac6687))
* **repo:** excluye a Dependabot de la validación de nombres de rama ([2e824d7](https://github.com/nataliarrod-unisabana/gestion-configuracion-ghost/commit/2e824d7e492ac04c8f6e9c256879fe3ad0e5dacf))
* **repo:** excluye a dependabot de la validacion de nombres de rama (#NN) ([00ebd8c](https://github.com/nataliarrod-unisabana/gestion-configuracion-ghost/commit/00ebd8c41f46cd838f9709f66f5b2212d92f5842))
* **repo:** restaura name, on y permissions del workflow ([690b63f](https://github.com/nataliarrod-unisabana/gestion-configuracion-ghost/commit/690b63fd19b8c072f4240dff9354ba6c4e5e1363))
