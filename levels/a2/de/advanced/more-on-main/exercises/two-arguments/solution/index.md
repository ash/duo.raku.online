---
title: 'Solution: Zwei Argumente addieren'
translations_gpt:
---

{% include menu.html %}

Hier ist ein Weg, die Aufgabe zu lösen.

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

1. Die zwei positionalen Parameter bekommen die zwei Wörter von der Kommandozeile.

1. Argumente von der Kommandozeile kommen als Zeichenketten an. Aber der `+`-Operator macht Zahlen daraus. Also ergeben `2` und `3` zusammen `5`.

{% include nav.html %}
