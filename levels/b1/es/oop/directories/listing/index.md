---
title: Listar un directorio
translations_gpt:
---

{% include menu.html %}

La rutina `dir` devuelve las entradas de un directorio, cada una como un objeto de ruta. Su orden no es fijo. Por eso, la gente suele ordenar el resultado, y así la salida siempre tiene el mismo orden.

```raku
mkdir 'box';
spurt 'box/a.txt', '';
spurt 'box/b.txt', '';

for dir('box').sort -> $entry {
    say $entry.basename;
}
```

El programa imprime los nombres ordenados de los archivos del directorio `box`:

```
a.txt
b.txt
```

Cada entrada es un objeto de ruta completo. El método `basename` da solo el nombre final, sin la parte del directorio. A un objeto de ruta le puedes hacer las mismas preguntas de antes: `.f`, `.d` y `.e`. Así que puedes, por ejemplo, recorrer un directorio y quedarte solo con los archivos.

{% include nav.html %}
