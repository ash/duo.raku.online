---
title: Sequenze
---

{% include menu.html %}

Una _sequenza_ è una serie di valori in un ordine fisso. Raku li crea uno dopo l'altro. Raku costruisce le sequenze con l'operatore `...`. Tu gli dai alcuni valori. L'operatore trova il modello in questi valori. Poi crea il resto dei valori, fino a un punto finale. Il punto finale è il valore dove finisce la sequenza.

Nel caso più semplice, la sequenza conta da un valore a un altro:

```raku
say 1 ... 5; # (1 2 3 4 5)
```

Puoi dare due valori all'inizio. Allora Raku trova il passo tra di loro. Va avanti con lo stesso passo. Così crei una sequenza aritmetica:

```raku
say 1, 3 ... 11; # (1 3 5 7 9 11)
```

Qui i valori iniziali `1, 3` danno un passo di due. Quindi Raku conta di due in due. Si ferma quando arriva a `11`.

L'operatore `...` dà un valore di tipo `Seq`:

```raku
say (1 ... 5).WHAT; # (Seq)
```

I prossimi argomenti mostrano altri modelli che l'operatore `...` conosce. Mostrano anche che una sequenza può essere lazy. Può essere perfino infinita, senza una fine.

{% include nav.html %}
