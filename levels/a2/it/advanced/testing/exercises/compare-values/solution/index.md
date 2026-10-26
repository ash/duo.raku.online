---
title: 'Solution: Confrontare valori'
translations_gpt:
---

{% include menu.html %}

Ecco un modo per risolvere il compito.

## Codice

```raku
use Test;

is 'a'.uc, 'A', 'uppercase';

done-testing;
```

🦋 Puoi trovare il codice sorgente nel file [compare-values.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/testing/compare-values.raku).

## Output

```
ok 1 - uppercase
1..1
```

## Commenti

1. `is` confronta due valori. `'a'.uc` è il valore che ottieni. `'A'` è il valore che ti aspetti.

1. I valori sono uguali, quindi il test ha successo. Se il test fallisce, `is` stampa tutti e due i valori.

{% include nav.html %}
