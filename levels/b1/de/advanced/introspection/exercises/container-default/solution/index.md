---
title: 'Solution: Der Standardwert des Containers'
---

{% include menu.html %}

Hier ist eine mögliche Lösung.

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

1. Der Trait `is default(0)` gibt dem Container einen Standardwert. Bisher wurde nichts zugewiesen, also gibt das Lesen von `$count` diesen Standardwert zurück. Deshalb gibt die erste Zeile `0` aus.

1. `.VAR.default` fragt den Container selbst nach seinem festgelegten Standardwert, der auch `0` ist. Ohne den Trait wäre der Standardwert eines Containers ohne Typ `(Any)`.

{% include nav.html %}
