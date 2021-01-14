# Funciones recursivas primitivas
En teoría de la computabilidad, la recursión primitiva permite definir una clase de funciones que forman un importante paso en la formalización de la noción de computabilidad. El proyecto se realizó utilizando el lenguaje de programación funcional [Lisp](https://es.wikipedia.org/wiki/Lisp) y el compilador de éste mismo llamado **Steel Bank Common Lisp** (_**SBCL**, porsus siglas en inglés_).

Es importante mencionar que las funciones se implementaron para funcionar correctamente solo con **Números Naturales**.

_Para más detalles, consultar el pdf de documentación adjunto en  `docs/funciones_recursivas.pdf`_

### Requisitos:
- **sbcl**: Compilador de archivos **Lisp**

### Ejecución
``` bash
sbcl --noinform --load project/recursive_functions.lisp --eval '(main)'
```
_**En el `--eval` especificamos la "función principal" a ejecutar. Se definió, para este caso, un bloque "main" que contine ejemplos de uso de cada función primitiva (ver archivo `project/recursive_functions.lisp línea:85`)**_

### Docker
Se proporciona los archivos de docker para crear un container en el cual tengamos un ambiente de pruebas para utilizar el compilador **sbcl**.
Utilizamos la imagen [fukamachi/sbcl](https://hub.docker.com/r/fukamachi/sbcl "Imagen Docker Hub") con núcleo Debian.

Para levantar el container seguimos los siguientes pasos:
1. Dentro de la carpeta ./docker, crear el archivo **docker-compose.yaml** se proporciona un ejemplo en **docker-compose.yaml.example**. Una vez hecho esto, ejecutar `docker-compose up` para construir y levantar el container
2. Dentro de la carpeta ./docker, para acceder a la terminal del container, ejecutar `docker-compose exec <nombre_del_container> bash`. _Si usaramos el nombre del container que esta en el archivo yaml de ejemplo, el comando sería `docker-compose exec lisp_primitive_functions bash`_
3. Una vez en la terminal del container, tendremos acceso a ejecutar todos los comandos que la imagen con núcleo Debian nos permita
