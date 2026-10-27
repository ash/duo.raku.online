---
title: 'Oplossing: Tel de tekens'
translations_gpt:
---

{% include menu.html %}

Hier is een manier om de taak op te lossen.

## Code

```raku
spurt 'data.txt', 'Raku';

say slurp('data.txt').chars;
```

🦋 Je kunt de broncode vinden in het bestand [count-characters.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/files/count-characters.raku).

## Uitvoer

```
4
```

## Opmerkingen

1. `spurt` schrijft de string `Raku` naar het bestand.

1. `slurp` leest het bestand als een string. `.chars` telt de tekens erin. Het zijn er vier.

1. Kijk in het bestand. Je ziet alleen deze vier tekens. Aan het eind staat geen newline-teken.

{% include nav.html %}
