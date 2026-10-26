---
title: 'Solution: Eine URL bauen'
translations_gpt:
---

{% include menu.html %}

Hier ist ein Weg, die Aufgabe zu lösen.

## Code

```raku
my @parts = <http :// example .com>;

my $url = [~] @parts;
say $url;
say $url.chars;
```

🦋 Den Quellcode finden Sie in der Datei [concatenate-a-list.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/metaoperators/concatenate-a-list.raku).

## Ausgabe

```
http://example.com
18
```

## Kommentare

1. Das Array nutzt die Quoting-Form mit spitzen Klammern, `<...>`. Das ist dasselbe wie `'http', '://', 'example', '.com'`.

1. `[~]` ist ein Reduktions-Meta-Operator. Er setzt den Operator `~` zwischen alle Elemente. Der Operator `~` verbindet Zeichenketten. Also verbindet `[~] @parts` die vier Teile zu einer Zeichenkette, `http://example.com`.

1. Das Ergebnis steht in der Variablen `$url`. So können wir es wieder benutzen. `$url.chars` zeigt die Länge der ganzen URL. Sie ist `18` Zeichen lang.

{% include nav.html %}
