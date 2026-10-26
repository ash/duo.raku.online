---
title: 'Solution: Som met de `&`-sigil'
translations_gpt: De oplossing van 'Som met de `&`-sigil'
---

{% include menu.html %}

Hier is een manier om de opgave op te lossen.

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

1. Het pointy block heeft twee parameters: `-> $a, $b`. De anonieme subroutine krijgt dus twee argumenten.

1. De variabele heeft de `&`-sigil. Dus kun je hem aanroepen als `add(2, 3)`. Het werkt als een gewone subroutine met een naam. Je schrijft de sigil niet in de aanroep. Het resultaat is `5`.

{% include nav.html %}
