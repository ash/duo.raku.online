---
title: 'Solution: Som met de `&`-sigil'
translations_gpt: De oplossing van 'Som met de `&`-sigil'
---

{% include menu.html %}

Hier is een mogelijke oplossing.

## Code

```raku
my &add = -> $a, $b {
    $a + $b;
};

say add(2, 3);
```

🦋 Je kunt de broncode vinden in het bestand [sum-with-sigil.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/anonymous-subroutines/sum-with-sigil.raku).

## Uitvoer

```
5
```

## Opmerkingen

1. Het pointy block heeft twee parameters, `-> $a, $b`. Daarom heeft de anonieme subroutine twee argumenten nodig.

1. De variabele is gedeclareerd met de `&`-sigil. Dus kun je hem aanroepen als `add(2, 3)`, precies zoals een subroutine met een naam. In de aanroep heb je geen sigil nodig. Dat geeft `5`.

{% include nav.html %}
