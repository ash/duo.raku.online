---
title: 'Solution: Pianificare due controlli'
translations_gpt:
---

{% include menu.html %}

Ecco un modo per risolvere il compito.

## Codice

```raku
use Test;

plan 2;

my @sorted = (3, 1, 2).sort;
is-deeply @sorted, [1, 2, 3], 'sorted';

is 10 % 3, 1, 'remainder';
```

🦋 Puoi trovare il codice sorgente nel file [test-a-list.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/testing/test-a-list.raku).

## Output

```
1..2
ok 1 - sorted
ok 2 - remainder
```

## Commenti

1. `plan 2` dà il conteggio prima di ogni test. Quindi la riga `1..2` viene per prima. Il file può eseguire un numero diverso di controlli. Allora l'intero gruppo di test fallisce. `done-testing` non può proteggerti in questo modo.

1. `is-deeply` controlla se le due liste sono esattamente uguali, anche nei tipi. Ordinare `3, 1, 2` dà `1, 2, 3`. Il risultato corrisponde.

1. `is` controlla se due valori sono uguali. Se non lo sono, mostra tutti e due i valori. Qui `10 % 3` è `1`. Questo è il valore atteso. Quindi anche il secondo test ha successo.

{% include nav.html %}
