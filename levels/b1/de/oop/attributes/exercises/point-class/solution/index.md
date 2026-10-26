---
title: 'Lösung: Eine Punktklasse'
translations_gpt:
---

{% include menu.html %}

Hier ist eine mögliche Lösung.

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

1. Die Deklarationen `has $.x` und `has $.y` erzeugen die Attribute und dazu ihre Lese-Accessoren.

1. Jedes Objekt speichert sein eigenes `x` und `y`. `$a` und `$b` sind die gleiche Art von Objekt, aber sie liefern verschiedene Koordinaten. Das ist der Hauptzweck von Attributen: Jede Instanz trägt ihre eigenen Daten.

{% include nav.html %}
