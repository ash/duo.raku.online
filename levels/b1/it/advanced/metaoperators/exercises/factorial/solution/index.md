---
title: 'Solution: Ogni fattoriale in una volta'
---

{% include menu.html %}

Ecco una possibile soluzione.

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

1. Il backslash dentro le parentesi quadre rende `[*]` una riduzione *triangolare*. Non riduce la lista a un singolo valore. Invece, conserva ogni prodotto parziale: `1`, poi `1*2`, poi `1*2*3`, e così via.

1. Ogni prodotto parziale `1*2*...*k` è esattamente _k!_. Quindi il risultato è la lista dei fattoriali da `1` a `6`. Un semplice `[*] 1..6` darebbe solo l'ultimo, `720`.

{% include nav.html %}
