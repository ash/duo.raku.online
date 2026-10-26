---
title: 'Solution: Waarden vergelijken'
translations_gpt:
---

{% include menu.html %}

Hier is een manier om de opgave op te lossen.

## Code

```raku
use Test;

is 'a'.uc, 'A', 'uppercase';

done-testing;
```

🦋 Je kunt de broncode vinden in het bestand [compare-values.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/testing/compare-values.raku).

## Uitvoer

```
ok 1 - uppercase
1..1
```

## Opmerkingen

1. `is` vergelijkt twee waarden. `'a'.uc` is de waarde die je krijgt. `'A'` is de waarde die je verwacht.

1. De waarden zijn gelijk, dus de test slaagt. Als de test faalt, toont `is` beide waarden.

{% include nav.html %}
