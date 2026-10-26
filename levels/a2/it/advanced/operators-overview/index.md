---
title: Panoramica del comportamento degli operatori
---

{% include menu.html %}

Un'espressione può avere diversi operatori. Allora Raku deve decidere l'ordine. Quale operatore viene prima? Due regole lo decidono: la _precedenza_ e l'_associatività_.

## Precedenza

La precedenza decide quale operatore è più forte. L'operatore più forte prende i suoi operandi per primo. La moltiplicazione ha una precedenza più alta dell'addizione. Così la moltiplicazione avviene per prima:

```raku
say 2 + 3 * 4; # 14
```

Raku legge l'espressione come `2 + (3 * 4)`. Il risultato è `14`, non `20`. Puoi sempre aggiungere le parentesi. Danno un ordine diverso:

```raku
say (2 + 3) * 4; # 20
```

## Associatività

Alcuni operatori hanno la _stessa_ precedenza. Allora l'associatività decide l'ordine. La sottrazione è associativa a sinistra. Così Raku la raggruppa da sinistra:

```raku
say 8 - 3 - 2; # 3
```

Questo è `(8 - 3) - 2`. Il risultato è `3`. Ma l'elevamento a potenza, l'operatore `**`, è associativo a destra:

```raku
say 2 ** 3 ** 2; # 512
```

Qui Raku raggruppa l'espressione come `2 ** (3 ** 2)`. Questo è `2 ** 9`, e il risultato è `512`.

## Confronti concatenati

Puoi _concatenare_ gli operatori di confronto. Allora vengono uno dopo l'altro. Questo codice è facile da leggere. Funziona come in matematica:

```raku
say 1 < 2 < 3; # True
say 1 < 5 < 3; # False
```

Raku confronta il valore centrale con i due valori vicini. `1 < 2 < 3` è vero. Questo perché `1 < 2` è vero, e anche `2 < 3` è vero.

{% include nav.html %}
