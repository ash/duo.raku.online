---
title: 'Solution: FizzBuzz'
---

{% include menu.html %}

Dit is een klassieke opdracht bij sollicitatiegesprekken. De opdracht test één ding. Denk je aan het geval waarin beide voorwaarden `True` zijn? Soms kun je een getal door 3 en door 5 delen zonder rest. Dan moet het programma `FizzBuzz` afdrukken.

## Code

Hier is de oplossing:

```raku
my $n = prompt 'Voer een getal in: ';

print 'Fizz' if $n %% 3;
print 'Buzz' if $n %% 5;
print "\n";
```

🦋 Vind het programma in het bestand [fizz-buzz.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/conditional-checks/fizz-buzz.raku).

## Voorbeeld

Test het programma met een paar groepen getallen:

* Getallen die je door 3 kunt delen, bijvoorbeeld: 3, 6, 9, 12.
* Getallen die je door 5 kunt delen, bijvoorbeeld: 5, 10, 15, 20.
* Getallen die je door 3 en door 5 kunt delen, bijvoorbeeld: 15, 30, 45.
* Getallen die je niet door 3 of 5 kunt delen, bijvoorbeeld: 4, 7, 11.

```console
$ raku exercises/conditional-checks/fizz-buzz.raku 
Voer een getal in: 3
Fizz

$ raku exercises/conditional-checks/fizz-buzz.raku
Voer een getal in: 10
Buzz

$ raku exercises/conditional-checks/fizz-buzz.raku
Voer een getal in: 7

$ raku exercises/conditional-checks/fizz-buzz.raku
Voer een getal in: 30
FizzBuzz
```

{% include nav.html %}
