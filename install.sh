#!/bin/bash

echo '===================================================='
echo '=== PASO 1: INGRESAR AL CONTENIDO DE INSTALACIÓN ==='
echo '===================================================='
cd mtie-soa-final/

echo '================================================================='
echo '=== PASO 2: MOVER EL CONTENIDO DE INSTALACIÓN UN NIVEL ARRIBA ==='
echo '================================================================='
sudo mv * ../

echo '=================================================='
echo '=== PASO 3: SALIR DE LA CARPETA DE INSTALACIÓN ==='
echo '=================================================='
cd ..

echo '================================================='
echo '=== PASO 4: ELIMINA DIRECTORIO DE INSTALACIÓN ==='
echo '================================================='
sudo rm -r mtie-soa-final/

echo '============================================'
echo '=== PASO 5: INGRESA A DIRECTORIO VOLUMES ==='
echo '============================================'
cd volumes/

echo '============================================================'
echo '=== PASO 6: CONCEDER PERMISOS A DIRECTORIO ELASTICSEARCH ==='
echo '============================================================'
sudo chmod 777 elasticsearch/

echo '=============================================='
echo '=== PASO 7: SALIR DE LA CARPETA DE VOLUMES ==='
echo '=============================================='
cd ..

echo '======================================'
echo '=== PASO 7: DESPLIEGA CONTENEDORES ==='
echo '======================================'
sudo docker-compose up --build -d