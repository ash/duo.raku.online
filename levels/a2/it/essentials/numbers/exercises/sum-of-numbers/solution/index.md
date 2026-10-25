---
title: 'Solution: Somma dei numeri'
---

{% include menu.html %}

Ecco la soluzione.

## Codice

```raku
my $a = prompt 'Inserisci il numero A: ';
my $b = prompt 'Inserisci il numero B: ';
my $c = prompt 'Inserisci il numero C: ';

my $sum = $a + $b + $c;

say "La somma dei numeri è $sum.";
```

🦋 Puoi trovare il codice completo nel file [sum-of-numbers.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/numbers/sum-of-numbers.raku).

## Output

Esegui il programma alcune volte. Controlla se funziona con diversi tipi di numeri.

```console
$ raku exercises/numbers/sum-of-numbers.raku
Inserisci il numero A: 1.2
Inserisci il numero B: -3.4
Inserisci il numero C: 45
La somma dei numeri è 42.8.
```

## Commenti

Nota che usiamo direttamente il valore della routine `prompt`. Ma l'utente può inserire una stringa che non è un numero. Allora il programma può avere problemi. Più avanti impariamo le eccezioni. Dopo, possiamo migliorare il programma.

{% include nav.html %}
