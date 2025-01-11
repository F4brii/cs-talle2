# Usa la imagen base de Jenkins LTS
FROM jenkins/jenkins:lts

# Cambia al usuario root para poder instalar paquetes
USER root

# Actualiza el repositorio e instala Docker y Python
RUN apt-get update && \
    apt-get install -y docker.io python3 python3-pip && \
    usermod -aG docker jenkins

# Cambiar de nuevo al usuario jenkins para ejecutar Jenkins como el usuario adecuado
USER root
