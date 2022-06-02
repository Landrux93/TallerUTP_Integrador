#!/bin/sh
mvn clean package && docker build -t webcolegio/PRUEBA1TALLERUTP .
docker rm -f PRUEBA1TALLERUTP || true && docker run -d -p 9080:9080 -p 9443:9443 --name PRUEBA1TALLERUTP webcolegio/PRUEBA1TALLERUTP