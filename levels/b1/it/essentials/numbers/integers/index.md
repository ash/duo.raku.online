---
title: Numeri interi
---

{% include menu.html %}

Il tipo di dato `Int` è per gli interi, cioè i numeri senza virgola. Possono essere positivi o negativi. Puoi aggiungere un segno `+`, se vuoi. Ecco alcuni esempi ovvi:

```raku
42
-42
100
-5
0
```

Sì, di default Raku tratta un semplice `0` come un intero.

## Gruppi di cifre

Raku ha una caratteristica carina che ti aiuta a scrivere numeri grandi. Puoi dividere le cifre in gruppi di migliaia per renderli più facili da leggere:

```raku
1_000_000
-3_141_592
```

Puoi creare un numero come `34_56`, ma è meglio non farlo. Altre persone che leggono il tuo codice potrebbero trovarlo confuso. Però non puoi mettere due trattini bassi uno accanto all'altro. Inoltre, un numero non può iniziare o finire con un trattino basso.

## Interi di qualsiasi lunghezza

Raku non ha problemi con i numeri oltre i limiti di 32 o 64 bit. Per esempio, il seguente programma è corretto. Moltiplica due interi grandi e stampa il risultato giusto.

```raku
say 1_234_456_789_012_345_678_901 * 987_654_321_098_765_432_100;
```

{% include nav.html %}
