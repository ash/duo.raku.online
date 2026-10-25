---
title: Uso de Docker
---

{% include menu.html %}

Hay una imagen de docker de Rakudo, llamada `rakudo-star` por razones históricas. Puedes usarla para ejecutar un shell REPL. También puedes ejecutar con ella un programa desde un archivo.

Ejecuta el siguiente comando para iniciar el shell. Si es necesario, descargará la última imagen de `rakudo-star`.

```console
$ docker run -it rakudo-star
```
Para ejecutar un programa, usa el siguiente comando:

```console
$ docker run -v "$(pwd):/script" rakudo-star raku /script/hello.raku
```

Para limpiar el contenedor cuando termine, agrega la bandera `--rm`. Así también se elimina su sistema de archivos. Puedes encontrar más instrucciones en la página del proyecto.

## Enlaces externos

* [Imagen de Docker](https://hub.docker.com/_/rakudo-star/)
* [Proyecto de Raku en docker en GitHub](https://github.com/Raku/docker)

{% include nav.html %}
