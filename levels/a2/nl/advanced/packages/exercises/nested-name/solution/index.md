---
title: 'Solution: Een geneste naam'
translations_gpt:
---

{% include menu.html %}

Hier is een manier om de opgave op te lossen.

## Code

```raku
module Outer {
    module Inner {
        our $base = 10;
        our sub doubled { $base * 2 }
    }
}

say $Outer::Inner::base;
say Outer::Inner::doubled();
```

🦋 Je kunt de broncode vinden in het bestand [nested-name.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/packages/nested-name.raku).

## Uitvoer

```
10
20
```

## Opmerkingen

1. Hier zit de ene naamruimte in de andere. Dat maakt een langer `::`-pad. De variabele en de subroutine zitten twee niveaus diep, in `Outer::Inner`.

1. De volledige naam `$Outer::Inner::base` geeft de variabele. `Outer::Inner::doubled()` geeft de subroutine, via dezelfde twee niveaus. De naam van een sub heeft geen sigil. Er staat dus geen `$` voor, maar bij de variabele wel.

1. Ze hebben allebei `our` ervoor. Daardoor zijn ze zichtbaar buiten hun module. Met `my` zouden ze privé blijven binnen `Inner`.

{% include nav.html %}
