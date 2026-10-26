---
title: 'Solvo: Klaso por punkto'
translations_gpt:
---

{% include menu.html %}

Jen unu maniero solvi la taskon.

## Kodo

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

🦋 Vi povas trovi la fontkodon en la dosiero [point-class.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/attributes/point-class.raku).

## Eligo

```
5
```

## Komentoj

1. La linioj `has $.x` kaj `has $.y` kreas la atributojn. Ili ankaŭ kreas atingilojn por legi ilin.

1. Ĉiu objekto tenas siajn proprajn `x` kaj `y`. `$a` kaj `$b` estas la sama speco de objekto. Sed ili donas malsamajn koordinatojn. Tio estas la ĉefa ideo de atributoj. Ĉiu ekzemplero havas siajn proprajn datumojn.

{% include nav.html %}
