---
title: 'Solution: Banchi in classe'
---

{% include menu.html %}

Puoi vedere la soluzione qui sotto.

## Codice

```raku
my $students = 23;

my $desks = $students div 2 + $students % 2;

say "$desks desks must be bought.";
```

🦋 Puoi trovare il codice completo nel file [class-desks.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/numbers/class-desks.raku).

## Output

Esegui il programma almeno due volte. Prova sia un numero dispari che un numero pari di studenti. Per esempio, per i numeri di input `23` e `24`, il programma stampa lo stesso risultato:

```console
$ raku exercises/numbers/class-desks.raku
12 desks must be bought.
```

## Commenti

Dividere solo il numero di studenti per due non basta. Il programma deve gestire sia i numeri dispari che quelli pari. Ecco un possibile modo per arrotondare il numero verso l'alto: `$students div 2 + $students % 2`. Quando il numero di studenti è pari, la seconda parte è zero. Allora il risultato è la metà del numero di studenti. Quando il numero è dispari, la prima parte è ancora un intero. Questo perché usiamo `div` invece di `/`. E la seconda parte dell'espressione aggiunge un banco in più.

{% include nav.html %}
