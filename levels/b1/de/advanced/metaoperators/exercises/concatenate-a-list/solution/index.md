---
title: 'Solution: Eine URL bauen'
translations_gpt:
---

{% include menu.html %}

Hier ist eine mögliche Lösung.

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

1. Das Array ist mit der Quoting-Form in spitzen Klammern `<...>` geschrieben. Das bedeutet dasselbe wie `'http', '://', 'example', '.com'`.

1. Der Reduktions-Meta-Operator `[~]` setzt den Operator `~` zwischen alle Elemente. Dieser Operator verbindet Zeichenketten. Also fügt `[~] @parts` die vier Teile zu der einen Zeichenkette `http://example.com` zusammen.

1. Wir speichern das Ergebnis in `$url`, damit wir es wieder verwenden können. Dann zeigt `$url.chars`, dass die fertige URL `18` Zeichen lang ist.

{% include nav.html %}
