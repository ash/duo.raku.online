---
title: 'Solution: Quadrati'
translations_gpt:
---

{% include menu.html %}

Ecco una possibile soluzione.

## Codice

```raku
my @squares = gather for 1..6 {
    take $_ ** 2 if $_ %% 2;
};

say @squares;
```

🦋 Puoi trovare il codice sorgente nel file [squares.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/gather-take/squares.raku).

## Output

```
[4 16 36]
```

## Commenti

1. Il controllo `if $_ %% 2` decide *se* prendere un valore, e `$_ ** 2` decide *cosa* prendere. Solo i numeri pari `2`, `4`, `6` passano questo controllo.

1. I loro quadrati `4`, `16`, `36` sono gli unici valori dati a `take`. Quindi `gather` raccoglie esattamente quelli. Qui un solo `take` filtra e cambia i valori insieme. Un semplice `map` non può dirlo in modo altrettanto chiaro.

{% include nav.html %}
