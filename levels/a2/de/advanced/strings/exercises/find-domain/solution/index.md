---
title: 'Solution: Der Domain-Teil'
---

{% include menu.html %}

Hier ist ein Weg, die Aufgabe zu lösen.

## Code

```raku
my $email = 'user@example.com';

my $at = $email.index('@');
say $email.substr($at + 1);
```

🦋 Du findest den Quellcode in der Datei [find-domain.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/strings/find-domain.raku).

## Ausgabe

```
example.com
```

## Kommentare

1. `index('@')` gibt `4` zurück. Das ist die Position des `@`-Zeichens. Die Zählung beginnt bei null.

1. `substr($at + 1)` beginnt ein Zeichen nach dem `@`. Es gibt keine Länge. Deshalb geht es bis zum Ende des Strings. Das Ergebnis ist `example.com`.

{% include nav.html %}
