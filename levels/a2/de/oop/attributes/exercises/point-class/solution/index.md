---
title: 'Lösung: Eine Punktklasse'
translations_gpt:
---

{% include menu.html %}

Hier ist ein Weg, die Aufgabe zu lösen.

## Code

```raku
class Point {
    has $.x;
    has $.y;
}

my $a = Point.new(x => 3, y => 4);
my $b = Point.new(x => 0, y => 0);

my $dist = sqrt(($a.x - $b.x) ** 2 + ($a.y - $b.y) ** 2);
say $dist;
```

🦋 Du findest den Quellcode in der Datei [point-class.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/attributes/point-class.raku).

## Ausgabe

```
5
```

## Kommentare

1. Die Zeilen `has $.x` und `has $.y` erstellen die Attribute. Sie erstellen auch Accessoren zum Lesen.

1. Jedes Objekt hat sein eigenes `x` und `y`. `$a` und `$b` sind die gleiche Art von Objekt. Aber sie haben verschiedene Koordinaten. Das ist die Hauptidee von Attributen. Jede Instanz hat ihre eigenen Daten.

{% include nav.html %}
