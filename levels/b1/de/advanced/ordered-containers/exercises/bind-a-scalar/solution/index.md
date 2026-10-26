---
title: 'Solution: Einen Skalar binden'
---

{% include menu.html %}

Hier ist eine mögliche Lösung für die Aufgabe.

## Code

```raku
my $source = 1;
my $bound := $source;
my $copy = $source;

$source = 9;
say $bound;
say $copy;
```

🦋 Du findest den Quellcode in der Datei [bind-a-scalar.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/ordered-containers/bind-a-scalar.raku).

## Ausgabe

```
9
1
```

## Kommentare

1. Binding mit `:=` macht keine Kopie. Es macht `$bound` zu einem anderen Namen für denselben Container wie `$source`. Deshalb ist die Änderung von `$source` über `$bound` sichtbar, das `9` ausgibt.

1. Eine normale Zuweisung mit `=` kopiert den Wert in einen separaten Container. Deshalb betrifft die spätere Änderung `$copy` nicht, und es gibt weiterhin `1` aus.

1. Der ganze Sinn ist, beide nebeneinander zu sehen. `:=` teilt einen Container, während `=` eine Kopie des Wertes macht.

{% include nav.html %}
