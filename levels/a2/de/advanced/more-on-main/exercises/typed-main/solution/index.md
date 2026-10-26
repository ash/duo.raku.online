---
title: 'Solution: Ein typisiertes MAIN'
translations_gpt:
---

{% include menu.html %}

Hier ist ein Weg, die Aufgabe zu lösen.

## Code

```raku
sub MAIN(Int $n) {
    say $n * 2;
}
```

🦋 Den Quellcode finden Sie in der Datei [typed-main.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/more-on-main/typed-main.raku).

## Ausgabe

```console
$ raku typed-main.raku 5
10

$ raku typed-main.raku abc
Usage:
  typed-main.raku <n>
```

## Kommentare

1. Der Parameter hat den Typ `Int`. Also muss das Wort auf der Kommandozeile wie eine Ganzzahl aussehen. Der Wert `5` kommt in `$n`. Dann gibt der Körper `10` aus.

1. Der Wert `abc` kann kein `Int` werden. Also passt die Signatur nicht. Raku führt den Körper nicht aus. Raku gibt stattdessen die Verwendungsmeldung aus. Diese Meldung erstellt Raku selbst. So prüft Raku die Argumente für Sie. Sie schreiben selbst keine Prüfungen.

{% include nav.html %}
