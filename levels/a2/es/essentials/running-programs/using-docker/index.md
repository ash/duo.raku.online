---
title: Uso de Docker
---

{% include menu.html %}

Hay una imagen de docker de Rakudo. Se llama `rakudo-star`, por razones históricas. Puedes usarla para ejecutar un shell REPL. También puedes ejecutar con ella un programa desde un archivo.

Ejecuta este comando para iniciar el shell. Si hace falta, descarga la última imagen de `rakudo-star`.

```console
$ docker run -it rakudo-star
```
Para ejecutar un programa, usa el siguiente comando:

```console
$ docker run -v "$(pwd):/script" rakudo-star raku /script/hello.raku
```

¿Quieres limpiar todo cuando el contenedor termina? Entonces agrega la bandera `--rm`. Elimina el contenedor y su sistema de archivos. Puedes encontrar más instrucciones en la página del proyecto.

## Enlaces externos

* [Imagen de Docker](https://hub.docker.com/_/rakudo-star/)
* [Proyecto de Raku en docker en GitHub](https://github.com/Raku/docker)

{% include nav.html %}
