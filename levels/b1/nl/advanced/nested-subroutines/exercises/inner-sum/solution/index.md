---
title: 'Solution: Een innerlijke som'
translations_gpt:
---

{% include menu.html %}

Hier is een mogelijke oplossing.

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

1. Binnen `compute` wordt de geneste `add` twee keer gebruikt: `add(2, 3)` is `5`, en `add(4, 5)` is `9`.

1. Hun som, `14`, is wat `compute` teruggeeft.

{% include nav.html %}
