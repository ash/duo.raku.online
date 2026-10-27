---
title: 'Solución: Vacíe un directorio'
translations_gpt:
---

{% include menu.html %}

Aquí tienes una forma de resolver la tarea.

## Código

```raku
mkdir 'cache';
spurt 'cache/a.tmp', '1';
spurt 'cache/b.tmp', '2';

.unlink for 'cache'.IO.dir;
rmdir 'cache';

say 'cache'.IO.e;
```

🦋 Puedes encontrar el código fuente en el archivo [clear-a-directory.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/deleting/clear-a-directory.raku).

## Salida

```
False
```

## Comentarios

1. `rmdir` solo elimina un directorio vacío. Así que el programa borra primero los archivos. `'cache'.IO.dir` da una lista de las entradas. `.unlink for …` borra cada una de ellas.

1. Ahora el directorio está vacío, y `rmdir` lo elimina. La última comprobación con `.e` da `False`. Así que `cache` de verdad ya no existe.

{% include nav.html %}
