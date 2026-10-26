---
title: 'Risinājums: Punkta klase'
translations_gpt:
---

{% include menu.html %}

Šeit ir viens iespējams risinājums.

## Kods

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

🦋 Atrodiet programmu failā [point-class.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/attributes/point-class.raku).

## Izvade

```
5
```

## Komentāri

1. Deklarācijas `has $.x` un `has $.y` izveido atribūtus un arī to lasīšanas piekļuves metodes.

1. Katrs objekts glabā savu `x` un `y`. `$a` un `$b` ir viena veida objekti, bet tie dod dažādas koordinātas. Tā ir atribūtu galvenā jēga: katra instance nes savus datus.

{% include nav.html %}
