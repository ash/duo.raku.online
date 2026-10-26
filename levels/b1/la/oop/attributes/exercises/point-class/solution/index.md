---
title: 'Solutio: Classis puncti'
translations_gpt:
---

{% include menu.html %}

Hic est una solutio possibilis.

## Codex

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

🦋 Inveni codicem fontem in archivo [point-class.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/attributes/point-class.raku).

## Exitus

```
5
```

## Commentarii

1. Declarationes `has $.x` et `has $.y` attributa creant et etiam accessores eorum legendi.

1. Quodque obiectum proprias `x` et `y` servat. `$a` et `$b` obiecta eiusdem generis sunt, sed diversas coordinatas dant. Haec est ratio praecipua attributorum: quodque exemplar propria data fert.

{% include nav.html %}
