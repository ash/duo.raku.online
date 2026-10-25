---
title: 'Solution: Correggere gli identificatori'
---

{% include menu.html %}

Puoi correggere gli identificatori in più di un modo. Ecco alcuni modi:

## Codice

```raku
my $AGE = 30;
my $Name = 'Valdis';
my $Middle'Name = 'C.';
my $address2 = 'Second street, 12';
my $from-to = 'London to Paris';
```

Tutti questi identificatori sono corretti. Ma i nomi con gli apostrofi non sono una buona idea. Evitali se `$non` hai una buona ragione.

🦋 Puoi trovare il codice sorgente nel file [identifiers.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/scalar-variables/identifiers.raku).

## Output

Questo programma non stampa niente. Rakudo lo compila e lo esegue. Non dovresti vedere errori:

```console
$ raku exercises/scalar-variables/identifiers.raku
```

## Commenti

Ecco i problemi dei nomi nel compito:

1. Un nome non può avere spazi: `$ A G E`.
1. Una variabile ha bisogno di un sigillo: `Name`. In Raku esistono anche variabili senza sigillo. Ma anche per loro, non puoi scrivere `my Name`.
1. Un nome non può iniziare con un apostrofo: `$'Middle'Name`. In realtà, qui è un apice singolo.
1. Un nome non può iniziare nemmeno con una cifra: `$2address`.
1. Un nome non può avere due trattini vicini: `$from--to`.

{% include nav.html %}
