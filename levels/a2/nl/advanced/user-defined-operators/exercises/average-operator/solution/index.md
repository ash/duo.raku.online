---
title: 'Solution: Gemiddelde-operator'
translations_gpt:
---

{% include menu.html %}

Hier is een manier om de opgave op te lossen.

## Code

```raku
sub infix:<avg>($a, $b) {
    ($a + $b) / 2
}

say 4 avg 10;
```

🦋 Je kunt de broncode vinden in het bestand [average-operator.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/user-defined-operators/average-operator.raku).

## Uitvoer

```
7
```

## Opmerkingen

1. We declareren de operator als `infix:<avg>`. Je schrijft hem dus tussen zijn twee operanden, zoals `+` of `~`.

1. De body telt de twee operanden op. Daarna deelt hij de som door twee. Voor `4` en `10` is het resultaat `7`.

{% include nav.html %}
