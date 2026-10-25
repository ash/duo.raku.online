---
title: 'Solution: FizzBuzz'
---

{% include menu.html %}

Questo è un compito classico nei colloqui di lavoro. Controlla una cosa. Pensi al caso in cui tutte e due le condizioni sono `True`? A volte un numero si divide sia per 3 che per 5 senza resto. Allora il programma deve stampare `FizzBuzz`.

## Codice

Ecco la soluzione:

```raku
my $n = prompt 'Inserisci un numero: ';

print 'Fizz' if $n %% 3;
print 'Buzz' if $n %% 5;
print "\n";
```

🦋 Trova il programma nel file [fizz-buzz.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/conditional-checks/fizz-buzz.raku).

## Esempio

Prova il programma con alcuni gruppi di numeri:

* Numeri che si dividono per 3, per esempio: 3, 6, 9, 12.
* Numeri che si dividono per 5, per esempio: 5, 10, 15, 20.
* Numeri che si dividono sia per 3 che per 5, per esempio: 15, 30, 45.
* Numeri che non si dividono né per 3 né per 5, per esempio: 4, 7, 11.

```console
$ raku exercises/conditional-checks/fizz-buzz.raku 
Inserisci un numero: 3
Fizz

$ raku exercises/conditional-checks/fizz-buzz.raku
Inserisci un numero: 10
Buzz

$ raku exercises/conditional-checks/fizz-buzz.raku
Inserisci un numero: 7

$ raku exercises/conditional-checks/fizz-buzz.raku
Inserisci un numero: 30
FizzBuzz
```

{% include nav.html %}
