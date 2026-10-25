---
title: 'Solution: Befehlszeilenargumente zählen und drucken'
---

{% include menu.html %}

In diesem Programm ist eine `for`-Schleife eine gute Wahl.

## Code

```raku
for ^@*ARGS -> $n {
    say "{$n + 1}. @*ARGS[$n]";
}
```

🦋 Finde das Programm in der Datei [count-and-print-arguments.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/positionals/count-and-print-arguments.raku).

## Ausgabe

Führe das Programm aus und prüfe, dass es die Argumente mit Zeilennummern ausgibt:

```console
$ raku exercises/positionals/count-and-print-arguments.raku one two three four
1. one
2. two
3. three
4. four
```

## Diskussion

Dieses Programm verwendet ein paar praktische Tricks. Zuerst läuft die `for`-Schleife über den [Bereich, der mit `^` gebildet wird](/de/essentials/ranges/excluding-endpoints). Der Bereich beginnt also bei 0. Er geht bis zum Wert von `@*ARGS`, schließt ihn aber nicht ein. In diesem Kontext [gibt](/de/essentials/positionals/arrays#size) `@*ARGS` die Länge des Arrays zurück.

Das erste Element eines Arrays hat den Index `0`. Aber die Aufgabe verlangt, dass wir die Zeilen ab `1` zählen. Diese kleine Verschiebung wird [innerhalb eines Codeblocks](/de/essentials/strings/code-interpolation) in einem String berechnet: `"{$n + 1} ..."`.

{% include nav.html %}
