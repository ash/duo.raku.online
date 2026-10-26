---
title: Panoramica del comportamento degli operatori
---

{% include menu.html %}

Quando un'espressione ha diversi operatori, Raku deve decidere in quale ordine usarli. Due regole lo controllano: la _precedenza_ e l'_associatività_.

## Precedenza

La precedenza decide quale operatore è più forte, cioè quale lega più strettamente. La moltiplicazione ha una precedenza più alta dell'addizione, quindi viene fatta per prima:

```raku
say 2 + 3 * 4; # 14
```

Raku legge l'espressione come `2 + (3 * 4)`, quindi il risultato è `14` e non `20`. Puoi sempre usare le parentesi per avere un ordine diverso:

```raku
say (2 + 3) * 4; # 20
```

## Associatività

L'associatività decide l'ordine quando gli operatori hanno la _stessa_ precedenza. La sottrazione è associativa a sinistra, cioè si raggruppa da sinistra:

```raku
say 8 - 3 - 2; # 3
```

Questo è `(8 - 3) - 2`, che dà `3`. L'elevamento a potenza, invece, è associativo a destra:

```raku
say 2 ** 3 ** 2; # 512
```

Qui l'espressione si raggruppa come `2 ** (3 ** 2)`. Questo è `2 ** 9`, che dà `512`.

## Confronti concatenati

Gli operatori di confronto possono essere _concatenati_. Questo si legge in modo naturale e fa quello che ti aspetteresti dalla matematica:

```raku
say 1 < 2 < 3; # True
say 1 < 5 < 3; # False
```

Il valore centrale viene confrontato con i valori ai suoi due lati. Quindi `1 < 2 < 3` è vero, perché sia `1 < 2` sia `2 < 3` sono veri.

{% include nav.html %}
