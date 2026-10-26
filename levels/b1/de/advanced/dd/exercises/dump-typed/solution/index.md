---
title: 'Solution: Eine typisierte Variable dumpen'
---

{% include menu.html %}

Hier ist eine mögliche Lösung für die Aufgabe.

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

1. Die Variable hat einen deklarierten Typ, also gibt `dd` ihn vor dem Namen aus: `Int $n = 42`.

1. Bei einer untypisierten Variable würde `dd` nur `$n = 42` ausgeben, ohne Typ davor.

{% include nav.html %}
