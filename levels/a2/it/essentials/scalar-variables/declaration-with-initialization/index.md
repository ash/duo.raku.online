---
title: Dichiarazione con inizializzazione
---

{% include menu.html %}

A volte conosci il valore di una nuova variabile fin dall'inizio. Allora ti basta una sola istruzione. Crea la variabile e ci mette il valore. Così risparmi una riga di codice:

```raku
my $name = 'Anna';
say $name;
```

## Due o più variabili

Puoi anche creare due o più variabili e dare loro dei valori. Scrivi così:

```raku
my ($name, $age) = 'Carl', 36;
```

{% include nav.html %}
