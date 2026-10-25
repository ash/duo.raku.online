---
title: 'Solution: Befehlszeilenargumente zählen und drucken'
---

{% include menu.html %}

Eine `for`-Schleife ist gut für dieses Programm.

## Code

```raku
for ^@*ARGS -> $n {
    say "{$n + 1}. @*ARGS[$n]";
}
```

🦋 Finde das Programm in der Datei [count-and-print-arguments.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/positionals/count-and-print-arguments.raku).

## Ausgabe

Führe das Programm aus. Prüfe, dass es die Argumente und die Zeilennummern ausgibt:

```console
$ raku exercises/positionals/count-and-print-arguments.raku one two three four
1. one
2. two
3. three
4. four
```

## Diskussion

Dieses Programm verwendet ein paar nützliche Tricks. Zuerst läuft die `for`-Schleife über einen [Bereich mit `^`](/de/essentials/ranges/excluding-endpoints). Der Bereich beginnt bei 0. Er geht bis zum Wert von `@*ARGS`. Aber dieser letzte Wert ist nicht im Bereich. Hier [liefert](/de/essentials/positionals/arrays#size) `@*ARGS` die Länge des Arrays.

Das erste Element eines Arrays hat den Index `0`. Aber die Aufgabe will Zeilennummern ab `1`. Also addieren wir 1 zum Index. Das Programm macht das [in einem Codeblock](/de/essentials/strings/code-interpolation) in einem String: `"{$n + 1} ..."`.

{% include nav.html %}
