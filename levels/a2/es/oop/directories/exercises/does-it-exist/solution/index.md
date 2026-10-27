---
title: 'Solución: ¿Existe?'
translations_gpt:
---

{% include menu.html %}

Aquí tienes una forma de resolver la tarea.

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

1. `.e` comprueba si una ruta existe. La primera comprobación va antes de crear el archivo. Así que devuelve `False`.

1. Después `spurt` crea `test.txt`. La segunda comprobación es sobre la *misma* ruta. Ahora devuelve `True`. Puedes preguntar otra vez al objeto de ruta. Su respuesta muestra el sistema de archivos tal como está ahora.

{% include nav.html %}
