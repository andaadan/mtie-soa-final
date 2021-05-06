# Deployment de Entorno de Producción

## MTIE - 501

### Inscrucciones a seguir:

### Paso 1 Clonar repositorio
```
git clone https://github.com/andaadan/mtie-soa-final.git
```

### De ser necesario, configurar la ejecucion de git, y repetir paso anterior
```
alias git="docker run -ti --rm -v $(pwd):/git bwits/docker-git-alpine"
```

### Paso 2 Ingresar al directorio de instalación
```
cd mtie-soa-final/
```

### Paso 3 Mover archivo de instalación a directorio raíz
```
sudo mv install.sh ../
```

### Paso 4 Salir a directorio raíz
```
cd ..
```

### Paso 5 Conceder permisos de ejecución
```
sudo chmod +x install.sh
```

### Paso 6 Ejecutar instalador
```
./install.sh
```