---
title: 'Solution: Een eerste test'
translations_gpt:
---

{% include menu.html %}

Hier is een manier om de opgave op te lossen.

## Code

```raku
use Test;

ok 'Raku'.chars == 4, 'Raku has four letters';

done-testing;
```

🦋 Je kunt de broncode vinden in het bestand [a-first-test.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/testing/a-first-test.raku).

## Uitvoer

```
ok 1 - Raku has four letters
1..1
```

## Opmerkingen

1. De voorwaarde `'Raku'.chars == 4` is waar. Daarom slaagt `ok`.

1. `done-testing` print de planregel `1..1`. Die zegt dat er één test heeft gedraaid.

{% include nav.html %}
