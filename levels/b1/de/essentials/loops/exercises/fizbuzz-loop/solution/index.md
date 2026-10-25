---
title: 'Solution: FizzBuzz in einer Schleife'
---

{% include menu.html %}

Diesmal prüft das Programm die Teilbarkeit in einer Schleife. Es gibt die Wörter nicht gleich aus. Stattdessen sammelt es sie zuerst in einer eigenen Variablen. Später fügt es diese Variable in eine Zeichenkette ein.

## Code

Hier ist die neue Lösung:

```raku
for 1..50 -> $n {
    my $fizzbuzz = '';
    $fizzbuzz ~= 'Fizz' if $n %% 3;
    $fizzbuzz ~= 'Buzz' if $n %% 5;
    say "$n: $fizzbuzz";
}
```

🦋 Finde das Programm in der Datei [fizbuzz-loop.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/loops/fizbuzz-loop.raku).

## Ausgabe

```console
$ raku exercises/loops/fizbuzz-loop.raku
```

## Kommentar

Einem sehr genauen Programmierer gefällt diese Lösung vielleicht nicht. Sie gibt nach dem Doppelpunkt immer ein Leerzeichen aus, auch wenn es kein Fizz oder Buzz gibt. Ändere das Programm, um das zu beheben.

{% include nav.html %}
