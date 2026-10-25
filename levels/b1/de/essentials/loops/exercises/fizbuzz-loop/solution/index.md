---
title: 'Solution: FizzBuzz in einer Schleife'
---

{% include menu.html %}

Diesmal erfolgt die Teilbarkeitsprüfung in einer Schleife. Anstatt die Wörter direkt auszugeben, sammelt das Programm sie zuerst in einer separaten Variablen und interpoliert diese später in eine Zeichenkette.

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

Ein sehr strenger Problemlöser findet diese Lösung vielleicht nicht perfekt, weil sie auch bei Zahlen, die kein Fizz oder Buzz bekommen haben, ein Leerzeichen nach dem Doppelpunkt ausgibt. Ändere das Programm, um dieses Problem zu vermeiden.

{% include nav.html %}
