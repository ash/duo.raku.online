---
title: 'Solution: Ripetere ogni numero'
translations_gpt:
---

{% include menu.html %}

Ecco una possibile soluzione.

## Codice

```raku
my @result = gather for 1..4 -> $n {
    take $n for 1..$n;
};

say @result;
```

🦋 Puoi trovare il codice sorgente nel file [collect-the-evens.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/gather-take/collect-the-evens.raku).

## Output

```
[1 2 2 3 3 3 4 4 4 4]
```

## Commenti

1. Niente dice che ci deve essere un solo `take` a ogni passaggio. Qui il `take $n for 1..$n` interno esegue `take` un numero diverso di volte a ogni passaggio. Questa flessibilità è proprio ciò che rende `gather`/`take` più potente di un semplice `map`.

1. Il ciclo esterno usa di proposito una variabile con nome, `-> $n`. Supponiamo di usare `$_` nel ciclo interno. Allora il `for` interno metterebbe in `$_` il suo contatore. Così prenderemmo il contatore invece del numero corrente.

1. `gather` raccoglie semplicemente ogni valore che è stato preso, in ordine. Così `@result` contiene `1`, poi due `2`, poi tre `3`, poi quattro `4`.

{% include nav.html %}
