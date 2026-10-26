---
title: 'Solution: Alle argumenten optellen'
translations_gpt:
---

{% include menu.html %}

Hier is een manier om de opgave op te lossen.

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

1. De slurpy parameter `*@nums` verzamelt alle argumenten in de array `@nums`. Het aantal argumenten maakt niet uit.

1. Dan telt de reductie-meta-operator `[+]` ze allemaal bij elkaar op. Het resultaat is `15`.

{% include nav.html %}
