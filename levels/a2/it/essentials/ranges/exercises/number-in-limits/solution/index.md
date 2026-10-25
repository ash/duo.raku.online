---
title: 'Solution: Se il numero è entro i limiti'
---

{% include menu.html %}

Il programma crea un intervallo con i numeri che inserisce l'utente. Poi uno smartmatch controlla se il terzo numero è nell'intervallo. Il risultato di questo test è un valore booleano. Quindi possiamo stamparlo subito.

## Codice

Ecco la soluzione:

```raku
my $begin = prompt 'Da (incluso): ';
my $end = prompt 'A (escluso): ';

my $n = prompt 'Qual è il numero? ';

say $n ~~ $begin ..^ $end;
```

🦋 Trova il programma nel file [number-in-limits.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/ranges/number-in-limits.raku).

## Output

Prova casi diversi. Prova anche un numero uguale alla fine dell'intervallo.

```console
$ raku exercises/ranges/number-in-limits.raku
Da (incluso): 1
A (escluso): 2
Qual è il numero? 1.5
True

$ raku exercises/ranges/number-in-limits.raku
Da (incluso): 100
A (escluso): 200
Qual è il numero? 100
True

$ raku exercises/ranges/number-in-limits.raku
Da (incluso): -5
A (escluso): -2
Qual è il numero? -2
False
```

## Commento

Nota che l'estremo destro non fa parte dell'intervallo: `$begin ..^ $end`.

{% include nav.html %}
