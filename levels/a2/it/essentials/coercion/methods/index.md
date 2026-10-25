---
title: Conversione dei tipi usando i metodi di coercizione del tipo
---

{% include menu.html %}

Puoi convertire un valore in un altro tipo. Un'altra parola per questo è _coercere_. Per farlo, chiama un metodo. Il suo nome è il nome del tipo di dato. Per esempio, converti una stringa in un intero:

```raku
my $howmany = '42';
my $n = $howmany.Int;
say $n;
```

Spesso non devi convertire i valori da solo. Raku lo fa per te. Questo codice funziona bene, come ti aspetti:

```raku
my $a = '10';
my $b = '20';
my $c = $a + $b;
say "The result is $c."; # The result is 30.
```

Le due variabili, `$a` e `$b`, contengono stringhe. Ma l'espressione le somma con `+`. Così qui Raku converte tutte e due le stringhe in interi. Poi anche `$c` riceve un intero. Nell'ultima riga, Raku interpola questa variabile in una stringa. Per questo, Raku trasforma il numero in cifre.

{% include nav.html %}
