---
title: 'Solution: Invertir y gritar'
---

{% include menu.html %}

Aquí tienes una forma de resolver la tarea.

## Código

```raku
say 'raku'.flip.uc;
```

🦋 Encuentra el programa en el archivo [reverse-and-shout.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/strings/reverse-and-shout.raku).

## Salida

```
UKAR
```

## Comentarios

1. Los métodos trabajan de izquierda a derecha. Primero, `flip` convierte `'raku'` en `'ukar'`. Luego `uc` lo convierte en `'UKAR'`.

1. Cada método devuelve una cadena nueva. Por eso puedes encadenarlos en una sola expresión.

{% include nav.html %}
