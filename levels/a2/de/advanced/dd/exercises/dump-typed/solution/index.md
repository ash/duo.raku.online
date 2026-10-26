---
title: 'Solution: Eine typisierte Variable dumpen'
---

{% include menu.html %}

Hier ist ein Weg, die Aufgabe zu lösen.

## Code

```raku
my Int $n = 42;
dd $n;
```

🦋 Du findest den Quellcode in der Datei [dump-typed.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/dd/dump-typed.raku).

## Ausgabe

```
Int $n = 42
```

## Kommentare

1. Die Variable hat einen deklarierten Typ. Also gibt `dd` den Typ vor dem Namen aus: `Int $n = 42`.

1. Bei einer Variable ohne Typ gibt `dd` nur `$n = 42` aus. Davor steht kein Typ.

{% include nav.html %}
