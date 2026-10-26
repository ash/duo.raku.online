---
title: 'Solvo: Du funkcioj en unu modulo'
translations_gpt:
---

{% include menu.html %}

Jen unu ebla solvo. Ĝi uzas du dosierojn.

## Kodo

La modulo, `Calc.rakumod`:

```raku
unit module Calc;

sub add($a, $b) is export {
    $a + $b
}

sub mul($a, $b) is export {
    $a * $b
}
```

La programo, `calc.raku`:

```raku
use Calc;

say add(3, 4);
say mul(3, 4);
```

🦋 Vi povas trovi ambaŭ fontdosierojn en la dosierujo [exercises/advanced/modules-basics/two-functions](https://github.com/ash/raku-course/tree/master/exercises/advanced/modules-basics/two-functions).

## Eligo

```console
$ raku -I. calc.raku
7
12
```

## Komentoj

1. Modulo povas eksporti tiom da subrutinoj, kiom vi volas. Ĉiu havas sian propran trajton `is export`.

1. Post nur unu `use Calc`, kaj `add` kaj `mul` estas disponeblaj en la programo.

{% include nav.html %}
