---
title: 'Solución: ¿Archivo o directorio?'
translations_gpt:
---

{% include menu.html %}

Aquí tienes una forma de resolver la tarea.

## Código

```raku
spurt 'a.txt', 'x';

say 'a.txt'.IO.f;
say 'a.txt'.IO.d;
```

🦋 Puedes encontrar el código fuente en el archivo [file-or-directory.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/directories/file-or-directory.raku).

## Salida

```
True
False
```

## Comentarios

1. `.f` comprueba si es un archivo regular. Así que devuelve `True` para `a.txt`.

1. `.d` comprueba si es un directorio. Le preguntamos por esa misma ruta. Devuelve `False`. `a.txt` es un archivo, no un directorio. Las dos comprobaciones funcionan en pareja. Muestran si una ruta es un archivo o un directorio.

{% include nav.html %}
