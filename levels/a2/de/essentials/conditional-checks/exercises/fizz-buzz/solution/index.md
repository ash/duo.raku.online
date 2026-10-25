---
title: 'Solution: FizzBuzz'
---

{% include menu.html %}

Das ist eine klassische Aufgabe in Vorstellungsgesprächen. Sie prüft eine Sache. Denkst du an den Fall, dass beide Bedingungen `True` sind? Manchmal kann man eine Zahl ohne Rest durch 3 und durch 5 teilen. Dann muss das Programm `FizzBuzz` ausgeben.

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

Teste das Programm mit ein paar Gruppen von Zahlen:

* Zahlen, die man durch 3 teilen kann, zum Beispiel: 3, 6, 9, 12.
* Zahlen, die man durch 5 teilen kann, zum Beispiel: 5, 10, 15, 20.
* Zahlen, die man durch 3 und durch 5 teilen kann, zum Beispiel: 15, 30, 45.
* Zahlen, die man nicht durch 3 und nicht durch 5 teilen kann, zum Beispiel: 4, 7, 11.

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
