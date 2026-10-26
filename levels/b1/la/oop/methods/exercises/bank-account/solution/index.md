---
title: 'Solutio: Robotum ambulans'
translations_gpt:
---

{% include menu.html %}

Hic est una solutio possibilis.

## Codex

```raku
class Robot {
    has $.position is rw = 0;

    method move($steps = 1) {
        $.position += $steps;
    }
}

my $r = Robot.new;
$r.move(5);
$r.move;
$r.move(2);

say $r.position;
```

🦋 Inveni codicem fontem in archivo [bank-account.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/methods/bank-account.raku).

## Exitus

```
8
```

## Commentarii

1. Attributum `position` `is rw` habet, itaque methodus id mutare potest. Valor eius praedefinitus est `0`, itaque robotum novum ab origine incipit.

1. Methodus `move` parametro suo valorem praedefinitum dat, `$steps = 1`. Itaque vocatio `$r.move` sine argumento uno gradu movet. Sed `$r.move(5)` et `$r.move(2)` dato numero graduum movent. Tres vocationes in summa `5 + 1 + 2` faciunt, itaque positio finalis est `8`.

{% include nav.html %}
