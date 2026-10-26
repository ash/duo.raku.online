---
title: 'Solutio: Robotum ambulans'
translations_gpt:
---

{% include menu.html %}

Hoc modo exercitationem solvere potes.

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

1. Attributum `position` `is rw` habet. Itaque methodus id mutare potest. Valor eius praedefinitus est `0`, itaque robotum novum ab origine incipit.

1. Methodus `move` parametro suo valorem praedefinitum dat: `$steps = 1`. Itaque `$r.move` sine argumento robotum uno gradu movet. `$r.move(5)` et `$r.move(2)` id dato numero movent. Tres vocationes `5 + 1 + 2` addunt. Itaque positio ultima est `8`.

{% include nav.html %}
