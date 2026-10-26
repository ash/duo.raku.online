---
title: 'Solution: Un primo test'
translations_gpt:
---

{% include menu.html %}

Ecco un modo per risolvere il compito.

## Codice

```raku
use Test;

ok 'Raku'.chars == 4, 'Raku has four letters';

done-testing;
```

🦋 Puoi trovare il codice sorgente nel file [a-first-test.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/testing/a-first-test.raku).

## Output

```
ok 1 - Raku has four letters
1..1
```

## Commenti

1. La condizione `'Raku'.chars == 4` è vera. Quindi `ok` ha successo.

1. `done-testing` stampa la riga del piano `1..1`. Dice che Raku ha eseguito un test.

{% include nav.html %}
