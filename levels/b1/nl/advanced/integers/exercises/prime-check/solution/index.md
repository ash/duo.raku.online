---
title: 'Solution: Priemgetal of niet'
---

{% include menu.html %}

Hier is een mogelijke oplossing.

## Code

```raku
say 97.is-prime;
say 91.is-prime;
```

🦋 Je kunt de broncode vinden in het bestand [prime-check.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/integers/prime-check.raku).

## Uitvoer

```
True
False
```

## Opmerkingen

1. `97` heeft geen delers behalve `1` en zichzelf, dus `is-prime` geeft `True` terug.

1. `91` lijkt priem, maar het is `7 × 13`, dus `is-prime` geeft `False` terug. De methode zoekt de factoren voor je. Daar is ze precies voor bedoeld.

{% include nav.html %}
