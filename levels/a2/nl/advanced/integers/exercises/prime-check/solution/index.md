---
title: 'Solution: Priemgetal of niet'
---

{% include menu.html %}

Hier is een manier om de opgave op te lossen.

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

1. Je kunt `97` alleen delen door `1` en door zichzelf. Daarom geeft `is-prime` `True` terug.

1. `91` lijkt een priemgetal, maar het is `7 × 13`. Daarom geeft `is-prime` `False` terug. De methode zoekt de factoren voor je. Daar is de methode voor.

{% include nav.html %}
