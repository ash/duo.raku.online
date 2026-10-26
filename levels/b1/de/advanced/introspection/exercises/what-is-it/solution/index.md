---
title: 'Solution: Was ist es'
---

{% include menu.html %}

Hier ist eine mögliche Lösung.

## Code

```raku
my $a = 42;
my $b = 'x';

say $a.WHAT === Int;
say $b.WHAT === Int;
```

🦋 Du findest den Quellcode in der Datei [what-is-it.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/introspection/what-is-it.raku).

## Ausgabe

```
True
False
```

## Kommentare

1. `$a.WHAT` ist nicht der String `Int`, sondern das echte `Int`-Typ-Objekt. Also vergleicht `=== Int` es mit dem Typ selbst und gibt `True` zurück.

1. `$b` enthält einen String, also ist sein `WHAT` gleich `Str`. Wenn du es mit `Int` vergleichst, bekommst du `False`. Deshalb ist `WHAT` in Bedingungen nützlich, und nicht nur, wenn du etwas ausgibst.

{% include nav.html %}
