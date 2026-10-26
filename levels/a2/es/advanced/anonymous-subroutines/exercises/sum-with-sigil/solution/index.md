---
title: 'Solution: Suma con el sigilo `&`'
translations_gpt:
---

{% include menu.html %}

Aquí tienes una forma de resolver la tarea.

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

1. El bloque puntiagudo tiene dos parámetros: `-> $a, $b`. Así que la subrutina anónima toma dos argumentos.

1. La variable tiene el sigilo `&`. Así que puedes llamarla como `add(2, 3)`. Funciona como una subrutina normal con nombre. No escribes el sigilo en la llamada. El resultado es `5`.

{% include nav.html %}
