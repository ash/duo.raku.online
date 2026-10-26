---
title: 'Solution: Was ist es'
---

{% include menu.html %}

Hier ist ein Weg, die Aufgabe zu lösen.

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

1. `$a.WHAT` ist nicht der String `Int`. Es ist das echte `Int`-Typ-Objekt. Also vergleicht `=== Int` es mit dem Typ selbst. Das Ergebnis ist `True`.

1. `$b` enthält einen String. Also ist sein `WHAT` gleich `Str`. Der Vergleich mit `Int` ergibt `False`. Also ist `WHAT` in Bedingungen nützlich. Es ist nicht nur für die Ausgabe da.

{% include nav.html %}
