---
title: 'Solution: Einen Skalar binden'
---

{% include menu.html %}

Hier ist ein Weg, die Aufgabe zu lösen.

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

1. Binding mit `:=` macht keine Kopie. Es macht `$bound` zu einem zweiten Namen für den Container von `$source`. Also sieht `$bound` die Änderung an `$source`. Es gibt `9` aus.

1. Eine normale Zuweisung mit `=` kopiert den Wert in einen anderen Container. Also betrifft die spätere Änderung `$copy` nicht. Es gibt weiter `1` aus.

1. Darum geht es in dieser Aufgabe. Du siehst die beiden Wege nebeneinander. `:=` teilt einen Container. `=` kopiert den Wert.

{% include nav.html %}
