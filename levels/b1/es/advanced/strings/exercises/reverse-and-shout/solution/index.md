---
title: 'Solution: Invertir y gritar'
---

{% include menu.html %}

Aquí tienes una posible solución.

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

1. Los métodos se ejecutan de izquierda a derecha. Primero `flip` invierte `'raku'` en `'ukar'`, y luego `uc` lo convierte en `'UKAR'`.

1. Cada método devuelve una cadena nueva, así que puedes encadenarlos en una sola expresión.

{% include nav.html %}
