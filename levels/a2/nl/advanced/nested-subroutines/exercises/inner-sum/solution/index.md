---
title: 'Solution: Een innerlijke som'
translations_gpt:
---

{% include menu.html %}

Hier is een manier om de opgave op te lossen.

## Code

```raku
sub compute {
    sub add($x, $y) {
        $x + $y;
    }

    add(2, 3) + add(4, 5);
}

say compute;
```

🦋 Je kunt de broncode vinden in het bestand [inner-sum.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/nested-subroutines/inner-sum.raku).

## Uitvoer

```
14
```

## Opmerkingen

1. `compute` gebruikt de geneste `add` twee keer. `add(2, 3)` is `5`, en `add(4, 5)` is `9`.

1. Hun som is `14`. `compute` geeft deze waarde terug.

{% include nav.html %}
