---
title: 'Solution: FizzBuzz'
---

{% include menu.html %}

Questo è un compito classico per i colloqui di lavoro. Mostra se ti ricordi del caso in cui entrambe le condizioni sono `True`. Quando un numero è divisibile sia per 3 che per 5, il programma deve stampare `FizzBuzz`.

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

Prova il programma con alcuni tipi diversi di input:

* Numeri divisibili per 3, per esempio: 3, 6, 9, 12.
* Numeri divisibili per 5, per esempio: 5, 10, 15, 20.
* Numeri divisibili sia per 3 che per 5, per esempio: 15, 30, 45.
* Altri numeri, che non sono divisibili né per 3 né per 5, per esempio: 4, 7, 11.

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
