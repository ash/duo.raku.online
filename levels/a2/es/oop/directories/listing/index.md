---
title: Listar un directorio
translations_gpt:
---

{% include menu.html %}

La rutina `dir` devuelve las entradas de un directorio. Una entrada es un archivo o un directorio que hay dentro. Cada entrada es un objeto de ruta. El orden de las entradas no es fijo. Por eso, la gente suele ordenar el resultado. Entonces la salida siempre tiene el mismo orden.

```raku
mkdir 'box';
spurt 'box/a.txt', '';
spurt 'box/b.txt', '';

for dir('box').sort -> $entry {
    say $entry.basename;
}
```

Este programa imprime los nombres de los archivos del directorio `box`. Los nombres van en orden:

```
a.txt
b.txt
```

Cada entrada es un objeto de ruta completo. El método `basename` da solo el nombre del final. No da la parte del directorio. A un objeto de ruta le puedes hacer las mismas preguntas de antes: `.f`, `.d`, `.e`. Así que, por ejemplo, puedes tomar solo los archivos de un directorio.

{% include nav.html %}
