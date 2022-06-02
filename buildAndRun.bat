@echo off
call mvn clean package
call docker build -t webcolegio/PRUEBA1TALLERUTP .
call docker rm -f PRUEBA1TALLERUTP
call docker run -d -p 9080:9080 -p 9443:9443 --name PRUEBA1TALLERUTP webcolegio/PRUEBA1TALLERUTP