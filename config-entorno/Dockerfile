# Imagen base de Ghost con versión de Node fijada explícitamente.
# La versión se controla como configuration item para evitar los fallos de
# compatibilidad documentados en el diagnóstico de la Unidad 1.
ARG GHOST_VERSION=6-alpine
FROM ghost:${GHOST_VERSION}

LABEL org.opencontainers.image.title="Ghost - entorno controlado"
LABEL org.opencontainers.image.description="Entorno de Ghost con versiones fijadas como CI"
LABEL org.opencontainers.image.source="https://github.com/TryGhost/Ghost"

# Los temas gestionados como CI-1 y CI-2 se despliegan en este directorio
WORKDIR /var/lib/ghost

EXPOSE 2368