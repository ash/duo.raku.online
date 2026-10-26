---
title: 'Solution: Somma con il sigillo `&`'
translations_gpt:
---

{% include menu.html %}

Ecco una possibile soluzione.

## Codice

```raku
my &add = -> $a, $b {
    $a + $b;
};

say add(2, 3);
```

🦋 Puoi trovare il codice sorgente nel file [sum-with-sigil.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/anonymous-subroutines/sum-with-sigil.raku).

## Output

```
5
```

## Commenti

1. Il blocco a freccia ha due parametri, `-> $a, $b`. Per questo la subroutine anonima ha bisogno di due argomenti.

1. La variabile è dichiarata con il sigillo `&`. Quindi puoi chiamarla come `add(2, 3)`, esattamente come una subroutine con nome. Nella chiamata non serve il sigillo. Questo dà `5`.

{% include nav.html %}
