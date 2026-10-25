---
title: 'Solution: Correggere gli identificatori'
---

{% include menu.html %}

Ci sono diversi modi per correggere gli identificatori. Eccone alcuni:

## Codice

```raku
my $AGE = 30;
my $Name = 'Valdis';
my $Middle'Name = 'C.';
my $address2 = 'Second street, 12';
my $from-to = 'London to Paris';
```

Tutti gli identificatori sono validi. Ma è meglio evitare gli apostrofi nei nomi se `$non` hai forti ragioni.

🦋 Puoi trovare il codice sorgente nel file [identifiers.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/scalar-variables/identifiers.raku).

## Output

Questo programma non stampa niente. Ma quando Rakudo lo compila e lo esegue, non dovresti ricevere errori:

```console
$ raku exercises/scalar-variables/identifiers.raku
```

## Commenti

Vediamo cosa non andava nei nomi originali:

1. Gli spazi non sono ammessi nei nomi: `$ A G E`.
1. Una variabile ha bisogno di un sigillo: `Name`. In Raku possono esistere variabili senza sigillo, ma anche loro non si possono dichiarare come `my Name`.
1. Un nome non può iniziare con un apostrofo, o, per essere precisi, con un apice singolo: `$'Middle'Name`.
1. Un nome non può iniziare nemmeno con una cifra: `$2address`.
1. Due trattini non possono stare uno dopo l'altro: `$from--to`.

{% include nav.html %}
