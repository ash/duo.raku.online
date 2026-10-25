---
title: 'Solution: FizzBuzz'
---

{% include menu.html %}

Das ist eine klassische Aufgabe für Vorstellungsgespräche. Sie zeigt, ob du an den Fall denkst, in dem beide Bedingungen `True` sind. Wenn eine Zahl durch 3 und durch 5 teilbar ist, soll das Programm `FizzBuzz` ausgeben.

## Code

Hier ist die Lösung:

```raku
my $n = prompt 'Gib eine Zahl ein: ';

print 'Fizz' if $n %% 3;
print 'Buzz' if $n %% 5;
print "\n";
```

🦋 Finde das Programm in der Datei [fizz-buzz.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/conditional-checks/fizz-buzz.raku).

## Beispiel

Teste das Programm mit ein paar verschiedenen Arten von Eingaben:

* Zahlen, die durch 3 teilbar sind, zum Beispiel: 3, 6, 9, 12.
* Zahlen, die durch 5 teilbar sind, zum Beispiel: 5, 10, 15, 20.
* Zahlen, die durch 3 und durch 5 teilbar sind, zum Beispiel: 15, 30, 45.
* Andere Zahlen, die weder durch 3 noch durch 5 teilbar sind, zum Beispiel: 4, 7, 11.

```console
$ raku exercises/conditional-checks/fizz-buzz.raku 
Gib eine Zahl ein: 3
Fizz

$ raku exercises/conditional-checks/fizz-buzz.raku
Gib eine Zahl ein: 10
Buzz

$ raku exercises/conditional-checks/fizz-buzz.raku
Gib eine Zahl ein: 7

$ raku exercises/conditional-checks/fizz-buzz.raku
Gib eine Zahl ein: 30
FizzBuzz
```

{% include nav.html %}
