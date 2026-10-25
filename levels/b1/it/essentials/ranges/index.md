---
title: Intervalli
---

{% include menu.html %}

In Raku, gli intervalli creano elenchi di elementi che vengono uno dopo l'altro.

Nel caso più semplice, un intervallo è un elenco di interi che crescono di uno. Per creare un intervallo, usa l'operatore `..` e due valori. Questi danno il valore minimo e massimo dell'intervallo:

```raku
1 .. 5
```

Gli spazi intorno all'operatore sono opzionali. Quindi puoi scrivere lo stesso intervallo così:

```raku
1..5
```

Un intervallo è un modo per creare elenchi, ma è comunque un singolo oggetto. Quindi puoi salvarlo in una variabile scalare:

```raku
my $r = 1 .. 5;
```

## Non solo numeri

Gli intervalli possono usare anche altri tipi di dati, se Raku sa come incrementare i loro valori. Per esempio:

```raku
my $letters = 'a' .. 'z';
```

In Raku, gli intervalli sono oggetti di un loro tipo di dato. Il tipo della variabile `$r` è `Range`.

{% include nav.html %}
