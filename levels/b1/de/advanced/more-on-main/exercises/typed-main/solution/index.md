---
title: 'Solution: Ein typisiertes MAIN'
translations_gpt:
---

{% include menu.html %}

Hier ist eine mögliche Lösung.

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

1. Der Typ `Int` bedeutet, dass das Wort auf der Kommandozeile wie eine Ganzzahl aussehen muss. Bei `5` kommt der Wert in `$n`, und der Körper gibt `10` aus.

1. Bei `abc` kann der Wert kein `Int` werden, also passt die Signatur nicht. Raku führt den Körper nicht aus. Stattdessen gibt Raku die automatisch erstellte Verwendungsmeldung aus. So prüft Raku die Argumente für Sie. Sie müssen selbst keine Prüfungen schreiben.

{% include nav.html %}
