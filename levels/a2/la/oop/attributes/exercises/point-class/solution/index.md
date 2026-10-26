---
title: 'Solutio: Classis puncti'
translations_gpt:
---

{% include menu.html %}

Hoc modo exercitationem solvere potes.

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

1. Lineae `has $.x` et `has $.y` attributa creant. Etiam accessores legendi creant.

1. Quodque obiectum proprias `x` et `y` servat. `$a` et `$b` obiecta eiusdem generis sunt. Sed diversas coordinatas dant. Haec est idea principalis attributorum. Quodque exemplar propria data habet.

{% include nav.html %}
