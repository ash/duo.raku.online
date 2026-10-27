---
title: 'Solución: Borre un archivo'
translations_gpt:
---

{% include menu.html %}

Aquí tienes una forma de resolver la tarea.

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

1. `spurt` crea el archivo. Así que la primera comprobación con `.e` da `True`.

1. `unlink` borra el archivo. Entonces la segunda comprobación con `.e` da `False`. El archivo ya no está. Fíjate en que usamos `.e` y no `.f`. `.f` comprueba el tipo de la ruta. Lanza un error si la ruta ya no existe. Pero `.e` solo responde `False`.

{% include nav.html %}
