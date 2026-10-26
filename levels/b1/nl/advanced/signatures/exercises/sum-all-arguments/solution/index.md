---
title: 'Solution: Alle argumenten optellen'
translations_gpt:
---

{% include menu.html %}

Hier is een mogelijke oplossing.

## Code

```raku
sub total(*@nums) {
    [+] @nums
}

say total(3, 5, 7);
```

🦋 De broncode is te vinden in het bestand [sum-all-arguments.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/signatures/sum-all-arguments.raku).

## Uitvoer

```
15
```

## Opmerkingen

1. De slurpy parameter `*@nums` verzamelt alle argumenten in de array `@nums`. Het maakt niet uit hoeveel het er zijn.

1. Daarna telt de reductie-meta-operator `[+]` ze allemaal op en geeft `15`.

{% include nav.html %}
