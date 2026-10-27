---
title: 'Solución: Cree un directorio'
translations_gpt:
---

{% include menu.html %}

Aquí tienes una forma de resolver la tarea.

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

1. `mkdir` crea el directorio. `.IO.d` muestra que `reports` es un directorio.

1. Ahora el directorio existe. Así que podemos escribir un archivo dentro. Para eso, damos una ruta con el nombre del directorio: `reports/data.txt`. Después comprobamos esta ruta con `.e`. La comprobación muestra que el archivo está en el directorio nuevo.

1. El orden es importante. `spurt` **no** crea por ti los directorios que faltan. Intenta escribir en `reports/data.txt` antes de crear el directorio `reports`. Obtienes un error como `Failed to open file … : No such file or directory`. Así que crea primero el directorio, como hace aquí `mkdir`. Entonces la escritura funciona. Y `mkdir` tiene otra cosa buena. También crea los directorios que faltan en medio de una ruta. Por ejemplo, `mkdir 'reports/2026'` crea toda la cadena de directorios en una sola llamada.

{% include nav.html %}
