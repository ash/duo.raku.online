---
title: 'Soluzione: Una classe punto'
translations_gpt:
---

{% include menu.html %}

Ecco un modo per risolvere il compito.

## Codice

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

🦋 Trova il programma nel file [point-class.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/attributes/point-class.raku).

## Output

```
5
```

## Commenti

1. Le righe `has $.x` e `has $.y` creano gli attributi. Creano anche gli accessori per leggerli.

1. Ogni oggetto conserva i suoi `x` e `y`. `$a` e `$b` sono lo stesso tipo di oggetto. Ma danno coordinate diverse. Questa è l'idea principale degli attributi. Ogni istanza ha i suoi dati.

{% include nav.html %}
