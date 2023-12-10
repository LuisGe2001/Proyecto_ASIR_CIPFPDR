#!/bin/bash
# Desinstalacion de versiones antiguas
yum remove -y docker docker-client docker-client-latest docker-common docker-latest docker-latest-logrotate docker-logrotate docker-engine
# Configurtacion del repositorio
yum install -y yum-utils
yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo
# Instalación docker
yum install -y docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
systemctl start docker
systemctl enable docker
# Mensaje fin instalacion
echo "La instalación de docker ha finalizado"
