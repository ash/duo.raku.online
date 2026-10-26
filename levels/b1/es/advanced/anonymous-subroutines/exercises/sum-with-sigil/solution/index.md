---
title: 'Solution: Suma con el sigilo `&`'
translations_gpt:
---

{% include menu.html %}

Aquí tienes una posible solución.

## Código

```raku
my &add = -> $a, $b {
    $a + $b;
};

say add(2, 3);
```

🦋 Encuentra el programa en el archivo [sum-with-sigil.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/anonymous-subroutines/sum-with-sigil.raku).

## Salida

```
5
```

## Comentarios

1. El bloque puntiagudo tiene dos parámetros, `-> $a, $b`. Por eso la subrutina anónima necesita dos argumentos.

1. La variable está declarada con el sigilo `&`. Así que puedes llamarla como `add(2, 3)`, exactamente como una subrutina con nombre. No necesitas el sigilo en la llamada. Esto da `5`.

{% include nav.html %}
