---
title: 'Solution: FizzBuzz in einer Schleife'
---

{% include menu.html %}

Diesmal prüft das Programm jede Zahl in einer Schleife. Es gibt die Wörter nicht sofort aus. Zuerst sammelt es sie in einer eigenen Variablen. Dann setzt es diese Variable in eine Zeichenkette ein.

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

Diese Lösung hat ein kleines Problem. Sie gibt nach dem Doppelpunkt immer ein Leerzeichen aus. Das macht sie auch ohne Fizz oder Buzz. Ein sehr genauer Programmierer mag das nicht. Ändere das Programm und behebe das Problem.

{% include nav.html %}
