---
title: 'Risinājums: Kliegšanas modulis'
translations_gpt:
---

{% include menu.html %}

Šeit ir viens iespējams risinājums. Tas izmanto divus failus.

## Kods

Modulis `Shouter.rakumod`:

```raku
unit module Shouter;

sub shout($s) is export {
    $s.uc
}
```

Programma `shout.raku`:

```raku
use Shouter;

say shout('hi');
```

🦋 Abus pirmkoda failus atrodiet direktorijā [exercises/advanced/modules-basics/shout-module](https://github.com/ash/raku-course/tree/master/exercises/advanced/modules-basics/shout-module).

## Izvade

```console
$ raku -I. shout.raku
HI
```

## Komentāri

1. Pateicoties iezīmei `is export`, `shout` var redzēt jebkura programma, kas izmanto moduli.

1. Metode `.uc` atgriež virkni lielajiem burtiem.

{% include nav.html %}
