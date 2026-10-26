---
title: Dump delle variabili
translations_gpt:
---

{% include menu.html %}

Per vedere il valore di una variabile, chiama `dd`. È come `say`:

```raku
my $var = 42;
dd $var;
```

`dd` mostra il valore. Mostra anche il nome della variabile:

```console
$var = 42
```

Una variabile può avere un tipo dichiarato. Allora `dd` mostra anche il tipo. Confronta l'output di questo programma con quello di prima:

```raku
my Int $var = 42;
dd $var;
```

```console
Int $var = 42
```

Questa è la differenza principale rispetto a `say`. Chiama `dd` una volta su uno scalare. Ti mostra il nome della variabile. Mostra anche il tipo del dato, se Raku lo conosce. Così puoi mettere più chiamate a `dd` in un programma. Sai sempre quale output viene da quale variabile.

Puoi fare il dump anche di strutture dati più grandi, come array o hash. Allora `dd` stampa il valore in una forma simile al codice:

```raku
my @arr = 10, 20, [1, 2, 3], 30;
dd @arr;
```

```console
[10, 20, [1, 2, 3], 30]
```

Nota che puoi vedere bene l'array interno. Ma qui `dd` non stampa il nome della variabile. Con gli hash funziona nello stesso modo. `dd` stampa le chiavi di un hash in ordine alfabetico:

```raku
my %hash =
    gamma => 'g',
    alpha => 'a',
    beta  => 'b';
dd %hash;
```

```console
{:alpha("a"), :beta("b"), :gamma("g")}
```

{% include nav.html %}
