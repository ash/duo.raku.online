---
title: 'Risinājums: Divas funkcijas vienā modulī'
translations_gpt:
---

{% include menu.html %}

Šeit ir viens veids, kā atrisināt uzdevumu. Tas izmanto divus failus.

## Kods

Modulis `Calc.rakumod`:

```raku
unit module Calc;

sub add($a, $b) is export {
    $a + $b
}

sub mul($a, $b) is export {
    $a * $b
}
```

Programma `calc.raku`:

```raku
use Calc;

say add(3, 4);
say mul(3, 4);
```

🦋 Abus pirmkoda failus atrodiet direktorijā [exercises/advanced/modules-basics/two-functions](https://github.com/ash/raku-course/tree/master/exercises/advanced/modules-basics/two-functions).

## Izvade

```console
$ raku -I. calc.raku
7
12
```

## Komentāri

1. Modulis var eksportēt daudz apakšprogrammu, tik daudz, cik vēlaties. Katrai no tām ir sava iezīme `is export`.

1. Programmai vajag tikai vienu `use Calc`. Pēc tā ir pieejamas gan `add`, gan `mul`.

{% include nav.html %}
