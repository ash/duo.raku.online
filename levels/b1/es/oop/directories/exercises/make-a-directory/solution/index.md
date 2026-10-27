---
title: 'Solución: Cree un directorio'
translations_gpt:
---

{% include menu.html %}

Aquí tienes una posible solución.

## Código

```raku
mkdir 'reports';
spurt 'reports/data.txt', 'x';

say 'reports'.IO.d;
say 'reports/data.txt'.IO.e;
```

🦋 Puedes encontrar el código fuente en el archivo [make-a-directory.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/directories/make-a-directory.raku).

## Salida

```
True
True
```

## Comentarios

1. `mkdir` crea el directorio, y `.IO.d` muestra que `reports` de verdad es un directorio.

1. El directorio ya existe, así que podemos escribir un archivo dentro. Para eso, damos una ruta que incluye el nombre del directorio: `reports/data.txt`. Después, `.e` sobre esta ruta muestra que el archivo ya está en el directorio nuevo.

1. El orden importa: `spurt` **no** crea por ti los directorios que faltan. Intenta escribir en `reports/data.txt` antes de que exista el directorio `reports`. Eso falla con un error como `Failed to open file … : No such file or directory`. La escritura solo funciona porque `mkdir` crea antes el directorio. Por suerte, `mkdir` también crea los directorios que faltan en medio de una ruta. Así que, con una ruta anidada como `mkdir 'reports/2026'`, una sola llamada construye toda la cadena.

{% include nav.html %}
