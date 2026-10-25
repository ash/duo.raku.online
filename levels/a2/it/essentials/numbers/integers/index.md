---
title: Numeri interi
---

{% include menu.html %}

I numeri interi sono numeri senza virgola. In Raku, il tipo di dato `Int` è per i numeri interi. Un intero può essere positivo o negativo. Puoi anche scrivere un segno `+` prima di un numero, se vuoi. Ecco alcuni esempi semplici:

```raku
42
-42
100
-5
0
```

Sì, anche un semplice `0` è un intero di default.

## Gruppi di cifre

Raku ha una bella caratteristica per i numeri grandi. Puoi dividere le cifre in gruppi di migliaia. Così i numeri sono più facili da leggere:

```raku
1_000_000
-3_141_592
```

Puoi anche scrivere un numero come `34_56`. È meglio non farlo. Può confondere altre persone che leggono il tuo codice. Ma non puoi mettere due trattini bassi uno vicino all'altro. E un numero non può iniziare o finire con un trattino basso.

## Interi di qualsiasi lunghezza

Raku lavora benissimo con numeri molto grandi. Possono essere più grandi dei limiti di 32 o 64 bit. Per esempio, il programma qui sotto va bene. Moltiplica due interi grandi e stampa il risultato corretto.

```raku
say 1_234_456_789_012_345_678_901 * 987_654_321_098_765_432_100;
```

{% include nav.html %}
