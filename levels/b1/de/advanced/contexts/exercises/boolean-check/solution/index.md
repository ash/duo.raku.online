---
title: 'Solution: Eine Boolesche Prüfung'
---

{% include menu.html %}

Hier ist eine mögliche Lösung.

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

1. Ein leeres Array ist falsch, und genau darauf verlässt sich `if @array`.

{% include nav.html %}
