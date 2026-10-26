---
title: 'Oplossing: Een puntklasse'
translations_gpt:
---

{% include menu.html %}

Hier is een mogelijke oplossing.

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

🦋 Je kunt de broncode vinden in het bestand [point-class.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/attributes/point-class.raku).

## Uitvoer

```
5
```

## Opmerkingen

1. De declaraties `has $.x` en `has $.y` maken de attributen en ook hun leesaccessors.

1. Elk object bewaart zijn eigen `x` en `y`. `$a` en `$b` zijn dezelfde soort object, maar ze geven verschillende coördinaten. Dat is het belangrijkste punt van attributen: elke instantie heeft haar eigen gegevens.

{% include nav.html %}
