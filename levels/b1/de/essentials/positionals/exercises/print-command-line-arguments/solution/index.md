---
title: 'Solution: Befehlszeilenargumente drucken'
---

{% include menu.html %}

Das Programm bekommt die Befehlszeilenargumente im Array `@*ARGS`. Daher brauchen wir eine Schleife über die Elemente dieses Arrays.

## Code

```raku
.say for @*ARGS;
```

🦋 Finde das Programm in der Datei [number-of-command-line-arguments.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/positionals/print-command-line-arguments.raku).

## Ausgabe

Führen Sie das Programm aus und prüfen Sie, dass es jedes Argument auf einer eigenen Zeile ausgibt:

```console
$ raku exercises/positionals/print-command-line-arguments.raku hello command-line arguments
hello
command-line
arguments
```

{% include nav.html %}
