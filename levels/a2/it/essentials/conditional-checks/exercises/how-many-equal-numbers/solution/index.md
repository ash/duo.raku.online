---
title: 'Solution: Quanti numeri sono uguali?'
---

{% include menu.html %}

Il programma fa alcuni confronti. L'utente inserisce tre numeri. Quindi ci sono tre casi possibili:

1. Tutti e tre i numeri sono uguali,
1. Solo due numeri sono uguali, e
1. Tutti i numeri sono diversi.

## Codice

Ecco la soluzione. Scrive ogni confronto per intero.

```raku
my $n1 = prompt 'Inserisci il numero 1: ';
my $n2 = prompt 'Inserisci il numero 2: ';
my $n3 = prompt 'Inserisci il numero 3: ';

if $n1 == $n2 == $n3 {
    say 3;
}
elsif $n1 == $n2 || $n2 == $n3 || $n1 == $n3 {
    say 2;
}
else {
    say 0;
}
```

🦋 Trova il programma nel file [how-many-equal-numbers.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/conditional-checks/how-many-equal-numbers.raku).

## Output

```console
$ raku exercises/conditional-checks/how-many-equal-numbers.raku 0 0 0
Inserisci il numero 1: 14
Inserisci il numero 2: 8
Inserisci il numero 3: 8
2

$ raku exercises/conditional-checks/how-many-equal-numbers.raku 
Inserisci il numero 1: 15
Inserisci il numero 2: 15
Inserisci il numero 3: 15
3

$ raku exercises/conditional-checks/how-many-equal-numbers.raku 
Inserisci il numero 1: 4
Inserisci il numero 2: 6
Inserisci il numero 3: 8
0
```

## Commenti

1. Puoi confrontare tre numeri in una sola espressione: `$n1 == $n2 == $n3`.
1. Più avanti, impari l'operatore di riduzione. Allora torna qui e risolvi di nuovo questo compito.

{% include nav.html %}
