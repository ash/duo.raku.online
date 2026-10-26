---
title: 'Solution: Een schreeuwmodule'
translations_gpt: De oplossing van 'Een roepmodule'
---

{% include menu.html %}

Hier is een manier om de opgave op te lossen. Ze gebruikt twee bestanden.

## Code

De module, `Shouter.rakumod`:

```raku
unit module Shouter;

sub shout($s) is export {
    $s.uc
}
```

Het programma, `shout.raku`:

```raku
use Shouter;

say shout('hi');
```

🦋 Je kunt beide bronbestanden vinden in de map [exercises/advanced/modules-basics/shout-module](https://github.com/ash/raku-course/tree/master/exercises/advanced/modules-basics/shout-module).

## Uitvoer

```console
$ raku -I. shout.raku
HI
```

## Opmerkingen

1. De eigenschap `is export` staat op `shout`. Elk programma dat de module gebruikt, kan hem dus zien.

1. De methode `.uc` geeft de string terug in hoofdletters, dus met grote letters.

{% include nav.html %}
