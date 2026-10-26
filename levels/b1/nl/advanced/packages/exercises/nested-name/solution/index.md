---
title: 'Solution: Een geneste naam'
translations_gpt:
---

{% include menu.html %}

Hier is een mogelijke oplossing.

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

1. Als je de ene naamruimte in de andere zet, krijg je een langer `::`-pad. Zowel de variabele als de subroutine zitten twee niveaus diep, in `Outer::Inner`.

1. De volledige naam `$Outer::Inner::base` bereikt de variabele. `Outer::Inner::doubled()` bereikt de subroutine via dezelfde twee niveaus. Een subnaam heeft geen sigil. Anders dan bij de variabele staat er dus geen `$` voor.

1. Beide leden zijn gedeclareerd met `our`. Dat maakt ze zichtbaar buiten hun module. Met `my` zouden ze privé blijven binnen `Inner`.

{% include nav.html %}
