---
title: 'Solution: ¿Primo o no?'
---

{% include menu.html %}

Aquí tienes una forma de resolver la tarea.

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

1. Puedes dividir `97` solo entre `1` y entre sí mismo. Por eso `is-prime` devuelve `True`.

1. `91` parece primo, pero es `7 × 13`. Por eso `is-prime` devuelve `False`. El método busca los factores por ti. Para eso existe este método.

{% include nav.html %}
