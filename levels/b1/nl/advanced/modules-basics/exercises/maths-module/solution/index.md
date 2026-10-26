---
title: 'Solution: Een wiskundemodule'
translations_gpt: De oplossing van 'Een wiskundemodule'
---

{% include menu.html %}

Hier is een mogelijke oplossing. Ze gebruikt twee bestanden.

## Code

De module, `Maths.rakumod`:

```raku
unit module Maths;

sub square($n) is export {
    $n * $n
}
```

Het programma, `maths.raku`:

```raku
use Maths;

say square(6);
```

🦋 Je kunt beide bronbestanden vinden in de map [exercises/advanced/modules-basics/maths-module](https://github.com/ash/raku-course/tree/master/exercises/advanced/modules-basics/maths-module).

## Uitvoer

```console
$ raku -I. maths.raku
36
```

## Opmerkingen

1. De module markeert `square` met `is export`. Daardoor is `square` beschikbaar voor het programma dat de module gebruikt.

1. De optie `-I.` voegt de huidige map toe aan het modulezoekpad. Op die manier vindt Raku `Maths.rakumod` naast het programma.

{% include nav.html %}
