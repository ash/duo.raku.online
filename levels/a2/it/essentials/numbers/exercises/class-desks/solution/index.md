---
title: 'Solution: Banchi in classe'
---

{% include menu.html %}

Ecco la soluzione.

## Codice

```raku
my $students = 23;

my $desks = $students div 2 + $students % 2;

say "$desks desks must be bought.";
```

🦋 Puoi trovare il codice completo nel file [class-desks.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/numbers/class-desks.raku).

## Output

Esegui il programma due o più volte. Prova un numero dispari di studenti e un numero pari. Per esempio, prova `23` e `24`. Per entrambi i numeri, il programma stampa lo stesso risultato:

```console
$ raku exercises/numbers/class-desks.raku
12 desks must be bought.
```

## Commenti

Non basta dividere il numero di studenti per due. Il programma deve funzionare con i numeri dispari e pari. Ecco un modo per arrotondare il numero verso l'alto: `$students div 2 + $students % 2`. L'espressione ha due parti. Se il numero di studenti è pari, la seconda parte è zero. Allora il risultato è la metà del numero di studenti. Ma se è dispari, la prima parte è ancora un intero. Questo perché usiamo `div`, non `/`. E la seconda parte aggiunge un banco in più.

{% include nav.html %}
