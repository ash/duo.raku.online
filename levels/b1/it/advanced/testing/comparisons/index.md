---
title: Confronti e piani
translations_gpt:
---

{% include menu.html %}

Oltre a `ok` e `is`, il modulo `Test` ha dei confronti per diversi tipi di valori. Ecco i più utili:

* `is` — controlla se due valori sono uguali (come stringhe o numeri)
* `is-deeply` — controlla che due strutture dati siano esattamente uguali, tipi compresi
* `like` — controlla che una stringa corrisponda a un'espressione regolare
* `isnt` — ha successo quando due valori **non** sono uguali

`is-deeply` è la scelta giusta per array, hash e dati annidati. Confronta in modo esatto sia la struttura sia il tipo:

```raku
use Test;

my @reversed = (1, 2, 3).reverse;
is-deeply @reversed, [3, 2, 1], 'reversed';

done-testing;
```

Questo stampa:

```
ok 1 - reversed
1..1
```

`is` trasformerebbe i valori in stringhe e li confronterebbe in modo poco preciso. Ma `is-deeply` richiede che le strutture corrispondano davvero. Nota che `done-testing` mette il piano `1..1` alla fine, dopo il controllo.

Non devi per forza lasciare che `done-testing` conti i test per te. Invece puoi dare il numero all'inizio con `plan`. Questo ti protegge da un file di test che si ferma presto e salta in silenzio alcuni controlli:

```raku
use Test;

plan 2;
ok True,  'first';
ok 1 < 2, 'second';
```

Questa volta il piano viene **per primo**, prima dei risultati:

```
1..2
ok 1 - first
ok 2 - second
```

Questa è la differenza da `done-testing` che si vede. `plan` stampa il conteggio `1..2` in cima, prima che parta qualsiasi controllo. `done-testing` invece lo stampa proprio alla fine. In ogni caso, con `plan 2` l'esecuzione si aspetta esattamente due test. Se ne vengono eseguiti meno o di più, la suite di test risulta fallita. Usa `plan` quando il numero di test è fisso e noto. Usa `done-testing` quando è più facile lasciare che il framework di test conti.

{% include nav.html %}
