---
title: 'Solution: Quadrati'
translations_gpt:
---

{% include menu.html %}

Ecco un modo per risolvere il compito.

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

1. Il controllo `if $_ %% 2` decide *se* il codice prende un valore. `$_ ** 2` decide *cosa* prende. Solo i numeri pari `2`, `4`, `6` passano il controllo.

1. I loro quadrati sono `4`, `16`, `36`. Solo questi valori vanno a `take`. Così `gather` raccoglie esattamente questi valori. Qui un solo `take` sceglie e cambia i valori insieme. Un semplice `map` non può dirlo in modo così chiaro.

{% include nav.html %}
