---
title: 'Risinājums: Kliegšanas modulis'
translations_gpt:
---

{% include menu.html %}

Šeit ir viens veids, kā atrisināt uzdevumu. Tas izmanto divus failus.

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

1. Apakšprogrammai `shout` ir iezīme `is export`. Tāpēc to redz katra programma, kas izmanto moduli.

1. Metode `.uc` atgriež virkni ar lielajiem burtiem.

{% include nav.html %}
