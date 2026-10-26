---
title: 'Solution: ¿Primo o no?'
---

{% include menu.html %}

Aquí tienes una posible solución.

## Código

```raku
say 97.is-prime;
say 91.is-prime;
```

🦋 Encuentra el programa en el archivo [prime-check.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/integers/prime-check.raku).

## Salida

```
True
False
```

## Comentarios

1. `97` no tiene divisores aparte de `1` y de sí mismo, así que `is-prime` devuelve `True`.

1. `91` parece primo, pero es `7 × 13`, así que `is-prime` devuelve `False`. El método busca los factores por ti. Precisamente para eso existe.

{% include nav.html %}
