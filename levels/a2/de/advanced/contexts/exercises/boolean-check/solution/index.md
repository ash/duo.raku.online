---
title: 'Solution: Eine Boolesche Prüfung'
---

{% include menu.html %}

Hier ist ein Weg, die Aufgabe zu lösen.

## Code

```raku
my @empty;
say ?@empty;
```

🦋 Du findest den Quellcode in der Datei [boolean-check.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/contexts/boolean-check.raku).

## Ausgabe

```
False
```

## Kommentare

1. Der Präfix `?` setzt den Booleschen Kontext.

1. Ein leeres Array ist falsch. Darum funktioniert `if @array`.

{% include nav.html %}
