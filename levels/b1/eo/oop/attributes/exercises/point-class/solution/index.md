---
title: 'Solvo: Klaso por punkto'
translations_gpt:
---

{% include menu.html %}

Jen unu ebla solvo.

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

1. La deklaroj `has $.x` kaj `has $.y` kreas la atributojn kaj ankaŭ iliajn legajn atingilojn.

1. Ĉiu objekto konservas siajn proprajn `x` kaj `y`. `$a` kaj `$b` estas la sama speco de objekto, sed ili donas malsamajn koordinatojn. Tio estas la ĉefa celo de atributoj: ĉiu ekzemplero portas siajn proprajn datumojn.

{% include nav.html %}
