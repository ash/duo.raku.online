---
title: 'Solution: Un intervallo aperto'
translations_gpt: true
---

{% include menu.html %}

Ecco una possibile soluzione.

## Codice

```raku
say (2, 4 ... *).head(4);
```

🦋 Puoi trovare il codice sorgente nel file [open-range.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/whatever/open-range.raku).

## Output

```
(2 4 6 8)
```

## Commenti

1. I valori iniziali `2, 4` fissano un passo aritmetico: ogni nuovo numero aumenta di due. La stella `*` da sola alla fine significa che la sequenza non finisce mai.

1. `head(4)` prende solo i primi quattro valori, `2, 4, 6, 8`. La sequenza è lazy, quindi il resto infinito non viene mai calcolato. Qui la stella da sola significa “qualsiasi cosa, senza limite superiore”.

{% include nav.html %}
