---
title: 'Solution: Twee controles plannen'
translations_gpt:
---

{% include menu.html %}

Hier is een mogelijke oplossing.

## Code

```raku
use Test;

plan 2;

my @sorted = (3, 1, 2).sort;
is-deeply @sorted, [1, 2, 3], 'sorted';

is 10 % 3, 1, 'remainder';
```

🦋 Je kunt de broncode vinden in het bestand [test-a-list.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/testing/test-a-list.raku).

## Uitvoer

```
1..2
ok 1 - sorted
ok 2 - remainder
```

## Opmerkingen

1. `plan 2` geeft het aantal voordat er een test draait, dus de regel `1..2` komt eerst. Als het bestand daarna een ander aantal controles uitvoerde, zou de testsuite falen. `done-testing` kan je deze bescherming niet geven.

1. `is-deeply` controleert of de twee lijsten precies gelijk zijn, ook hun types. Het sorteren van `3, 1, 2` geeft `1, 2, 3`, en dat komt overeen.

1. `is` controleert twee waarden op gewone gelijkheid. Als de test faalt, toont het beide waarden. Hier is `10 % 3` gelijk aan `1`, en dat is de verwachte waarde. De tweede test slaagt dus ook.

{% include nav.html %}
