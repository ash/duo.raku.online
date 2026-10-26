---
title: Confronti e piani
translations_gpt:
---

{% include menu.html %}

Il modulo `Test` non ha solo `ok` e `is`. Ha confronti per diversi tipi di valori. Questi sono i più utili:

* `is` — controlla se due valori sono uguali (come stringhe o numeri)
* `is-deeply` — controlla se due strutture dati sono esattamente uguali, anche nei tipi
* `like` — controlla se una stringa corrisponde a un'espressione regolare
* `isnt` — ha successo quando due valori **non** sono uguali

Usa `is-deeply` per array, hash e dati dentro altri dati. Confronta la struttura e il tipo in modo esatto:

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

`is` trasforma i valori in stringhe. Poi li confronta, ma non in modo molto rigido. `is-deeply` è diverso. Con questa funzione le strutture devono corrispondere davvero. Nota che `done-testing` mette il piano `1..1` alla fine, dopo il controllo.

`done-testing` può contare i test per te. Ma puoi anche dare il numero all'inizio, con `plan`. Questo aiuta con un problema. A volte un file di test si ferma troppo presto. Allora salta alcuni controlli senza nessun messaggio:

```raku
use Test;

plan 2;
ok True,  'first';
ok 1 < 2, 'second';
```

Ora il piano viene **per primo**. Arriva prima dei risultati:

```
1..2
ok 1 - first
ok 2 - second
```

Qui vedi come `plan` è diverso da `done-testing`. `plan` stampa il conteggio `1..2` in cima, prima di tutti i controlli. `done-testing` lo stampa proprio alla fine. In ogni caso, con `plan 2` l'esecuzione aspetta esattamente due test. Se ci sono meno test o più test, tutto il gruppo di test fallisce. Usa `plan` se il numero di test è fisso e lo conosci. Usa `done-testing` se è più facile lasciar contare il modulo di test.

{% include nav.html %}
