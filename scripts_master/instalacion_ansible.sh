#!/bin/bash
# Instalacion ansible
yum install -y epel-release
yum install -y ansible
yum install -y ansible-collection-community-docker
# instalacion de python3 y pip3 para su posterior utilizacion por parte de ansible
yum install -y python3
# Configuraciones para el correcto funcionamiento de docker con ansible
pip3 install --upgrade pip
pip3 install --upgrade setuptools
pip3 install docker-compose
