---
title: 'Solution: Zwei Argumente addieren'
translations_gpt:
---

{% include menu.html %}

Hier ist eine mögliche Lösung.

## Code

```raku
sub MAIN($a, $b) {
    say $a + $b;
}
```

🦋 Den Quellcode finden Sie in der Datei [two-arguments.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/more-on-main/two-arguments.raku).

## Ausgabe

```console
$ raku two-arguments.raku 2 3
5
```

## Kommentare

1. Die zwei positionalen Parameter empfangen die zwei Wörter von der Kommandozeile.

1. Kommandozeilenargumente kommen als Zeichenketten an, aber der `+`-Operator wandelt sie in Zahlen um. Also ergeben `2` und `3` zusammen `5`.

{% include nav.html %}
