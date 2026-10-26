---
title: 'Solution: Pianificare due controlli'
translations_gpt:
---

{% include menu.html %}

Ecco una possibile soluzione.

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

1. `plan 2` dà il conteggio prima che parta qualsiasi test, quindi la riga `1..2` viene per prima. Se poi il file eseguisse un numero diverso di controlli, la suite di test fallirebbe. `done-testing` non può darti questa protezione.

1. `is-deeply` controlla che le due liste siano esattamente uguali, tipi compresi. Ordinare `3, 1, 2` dà `1, 2, 3`, che corrisponde.

1. `is` controlla se due valori sono semplicemente uguali. Se il test fallisce, mostra entrambi i valori. Qui `10 % 3` è `1`, che è il valore atteso. Quindi anche il secondo test ha successo.

{% include nav.html %}
