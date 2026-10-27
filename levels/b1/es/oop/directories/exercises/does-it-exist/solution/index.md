---
title: 'Solución: ¿Existe?'
translations_gpt:
---

{% include menu.html %}

Aquí tienes una posible solución.

## Código

```raku
say 'test.txt'.IO.e;
spurt 'test.txt', 'x';
say 'test.txt'.IO.e;
```

🦋 Puedes encontrar el código fuente en el archivo [does-it-exist.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/directories/does-it-exist.raku).

## Salida

```
False
True
```

## Comentarios

1. `.e` comprueba si una ruta existe. La primera comprobación ocurre antes de que creemos el archivo, así que devuelve `False`.

1. Después `spurt` crea `test.txt`, y la segunda comprobación sobre la *misma* ruta devuelve `True`. Si vuelves a preguntar al objeto de ruta, obtienes el estado actual del sistema de archivos.

{% include nav.html %}
