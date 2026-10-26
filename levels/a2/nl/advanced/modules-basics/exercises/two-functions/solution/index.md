---
title: 'Solution: Twee functies in één module'
translations_gpt: De oplossing van 'Twee functies in één module'
---

{% include menu.html %}

Hier is een manier om de opgave op te lossen. Ze gebruikt twee bestanden.

## Code

De module, `Calc.rakumod`:

```raku
unit module Calc;

sub add($a, $b) is export {
    $a + $b
}

sub mul($a, $b) is export {
    $a * $b
}
```

Het programma, `calc.raku`:

```raku
use Calc;

say add(3, 4);
say mul(3, 4);
```

🦋 Je kunt beide bronbestanden vinden in de map [exercises/advanced/modules-basics/two-functions](https://github.com/ash/raku-course/tree/master/exercises/advanced/modules-basics/two-functions).

## Uitvoer

```console
$ raku -I. calc.raku
7
12
```

## Opmerkingen

1. Een module kan veel subroutines exporteren, zoveel als je wilt. Elke subroutine heeft zijn eigen eigenschap `is export`.

1. Het programma heeft maar één `use Calc` nodig. Daarna zijn `add` en `mul` allebei beschikbaar.

{% include nav.html %}
