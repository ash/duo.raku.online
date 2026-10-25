---
title: Intervalli
---

{% include menu.html %}

In Raku, un intervallo crea un elenco di elementi. Gli elementi sono in ordine, uno dopo l'altro.

Nel caso più semplice, un intervallo è un elenco di interi. Ogni intero è 1 in più di quello prima. Per creare un intervallo, usa l'operatore `..` con due valori. Il primo valore è il valore più piccolo dell'intervallo. Il secondo valore è il più grande:

```raku
1 .. 5
```

Non servono spazi intorno all'operatore. Quindi puoi scrivere lo stesso intervallo anche così:

```raku
1..5
```

Un intervallo crea un elenco. Ma l'intervallo stesso è un solo oggetto. Quindi puoi tenerlo in una variabile scalare:

```raku
my $r = 1 .. 5;
```

## Non solo numeri

Puoi creare intervalli anche con altri tipi di dati. Funziona se Raku sa come trovare il valore successivo. Per esempio:

```raku
my $letters = 'a' .. 'z';
```

In Raku, gli intervalli hanno un loro tipo di dato. La variabile `$r` ha il tipo `Range`.

{% include nav.html %}
