---
title: 'Solution: Der Standardwert des Containers'
---

{% include menu.html %}

Hier ist ein Weg, die Aufgabe zu lösen.

## Code

```raku
my $count is default(0);

say $count;
say $count.VAR.default;
```

🦋 Du findest den Quellcode in der Datei [container-default.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/introspection/container-default.raku).

## Ausgabe

```
0
0
```

## Kommentare

1. Der Trait `is default(0)` gibt dem Container einen Standardwert. Das Programm weist `$count` nichts zu. Also gibt `$count` den Standardwert zurück. Die erste Zeile gibt `0` aus.

1. `.VAR.default` fragt den Container nach seinem Standardwert. Dieser ist auch `0`. Ohne den Trait ist der Standardwert anders. Ein Container ohne Typ hat dann den Standardwert `(Any)`.

{% include nav.html %}
