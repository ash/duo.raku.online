---
title: 'Solution: Twee functies in één module'
translations_gpt: De oplossing van 'Twee functies in één module'
---

{% include menu.html %}

Hier is een mogelijke oplossing. Ze gebruikt twee bestanden.

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

1. Een module kan zoveel subroutines exporteren als je wilt. Elke subroutine heeft zijn eigen `is export`-eigenschap.

1. Na maar één `use Calc` zijn zowel `add` als `mul` beschikbaar in het programma.

{% include nav.html %}
