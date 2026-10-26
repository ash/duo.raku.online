---
title: 'Solution: Somma con il sigillo `&`'
translations_gpt:
---

{% include menu.html %}

Ecco un modo per risolvere il compito.

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

1. Il blocco a freccia ha due parametri: `-> $a, $b`. Quindi la subroutine anonima prende due argomenti.

1. La variabile ha il sigillo `&`. Quindi puoi chiamarla come `add(2, 3)`. Funziona come una normale subroutine con nome. Nella chiamata non scrivi il sigillo. Il risultato è `5`.

{% include nav.html %}
