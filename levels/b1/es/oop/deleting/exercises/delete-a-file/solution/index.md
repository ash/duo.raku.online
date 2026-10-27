---
title: 'Solución: Borre un archivo'
translations_gpt:
---

{% include menu.html %}

Aquí tienes una posible solución.

## Código

```raku
spurt 'note.txt', 'temporary';
say 'note.txt'.IO.e;

unlink 'note.txt';
say 'note.txt'.IO.e;
```

🦋 Puedes encontrar el código fuente en el archivo [delete-a-file.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/deleting/delete-a-file.raku).

## Salida

```
True
False
```

## Comentarios

1. `spurt` crea el archivo, así que la primera comprobación con `.e` da `True`.

1. `unlink` borra el archivo. Entonces la segunda comprobación con `.e` da `False`, porque el archivo ya no está. Fíjate en que usamos `.e` y no `.f`. La comprobación de tipo `.f` lanzaría un error para una ruta que ya no existe. Pero `.e` simplemente responde `False`.

{% include nav.html %}
