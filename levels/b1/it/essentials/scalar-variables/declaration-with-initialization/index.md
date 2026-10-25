---
title: Dichiarazione con inizializzazione
---

{% include menu.html %}

A volte conosci già il valore quando crei una variabile. Allora puoi fare le due cose in una sola istruzione, e così risparmi una riga di codice:

```raku
my $name = 'Anna';
say $name;
```

## Più variabili

Per creare più variabili e assegnare loro dei valori, usa questa forma:

```raku
my ($name, $age) = 'Carl', 36;
```

{% include nav.html %}
