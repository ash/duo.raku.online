---
title: 'Solution: Ogni fattoriale in una volta'
---

{% include menu.html %}

Ecco un modo per risolvere il compito.

## Codice

```raku
say [\*] 1..6;
```

🦋 Puoi trovare il codice sorgente nel file [factorial.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/metaoperators/factorial.raku).

## Output

```
(1 2 6 24 120 720)
```

## Commenti

1. C'è un backslash dentro le parentesi quadre. Rende `[*]` una riduzione *triangolare*. Questa riduzione non trasforma la lista in un solo valore. Tiene ogni passo del prodotto: `1`, poi `1*2`, poi `1*2*3`, e così via.

1. Ogni prodotto `1*2*...*k` è proprio _k!_. Così il risultato è la lista dei fattoriali da `1` a `6`. Un semplice `[*] 1..6` dà solo l'ultimo, `720`.

{% include nav.html %}
