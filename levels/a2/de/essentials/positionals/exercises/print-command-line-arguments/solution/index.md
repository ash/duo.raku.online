---
title: 'Solution: Befehlszeilenargumente drucken'
---

{% include menu.html %}

Das Programm bekommt die Argumente von der Befehlszeile. Sie sind im Array `@*ARGS`. Also brauchen wir eine Schleife über seine Elemente.

## Code

```raku
.say for @*ARGS;
```

🦋 Finde das Programm in der Datei [number-of-command-line-arguments.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/positionals/print-command-line-arguments.raku).

## Ausgabe

Führen Sie das Programm aus. Prüfen Sie, dass es die Argumente ausgibt, eines pro Zeile:

```console
$ raku exercises/positionals/print-command-line-arguments.raku hello command-line arguments
hello
command-line
arguments
```

{% include nav.html %}
