---
title: 'Solution: Confrontare valori'
translations_gpt:
---

{% include menu.html %}

Ecco una possibile soluzione.

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

1. `is` confronta il valore effettivo, `'a'.uc`, con il valore atteso, `'A'`.

1. Corrispondono, quindi il test ha successo. Se il test fallisse, `is` stamperebbe entrambi i valori.

{% include nav.html %}
