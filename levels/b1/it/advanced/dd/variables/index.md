---
title: Dump delle variabili
translations_gpt:
---

{% include menu.html %}

Chiama `dd` per vedere cosa c'è dentro una variabile. Lo usi nello stesso modo di `say`:

```raku
my $var = 42;
dd $var;
```

`dd` stampa sia il valore sia il nome della variabile:

```console
$var = 42
```

Se la variabile ha un tipo dichiarato, `dd` mostra anche il tipo. Confronta l'output di questo programma con quello precedente:

```raku
my Int $var = 42;
dd $var;
```

```console
Int $var = 42
```

Questa è la differenza principale rispetto a `say`. Una chiamata a `dd` su uno scalare ti dice il nome della variabile. Ti dice anche il tipo del dato, quando è noto. Così puoi aggiungere più chiamate a `dd` in un programma. Vedrai comunque quale output appartiene a quale variabile.

Puoi fare il dump anche di strutture dati più complesse, per esempio array o hash. Allora `dd` stampa il valore in una forma simile al codice:

```raku
my @arr = 10, 20, [1, 2, 3], 30;
dd @arr;
```

```console
[10, 20, [1, 2, 3], 30]
```

Nota che puoi vedere chiaramente l'array annidato. Ma il nome della variabile non viene stampato. Lo stesso vale per gli hash, e `dd` stampa le loro chiavi in ordine alfabetico:

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
