---
title: 'Solution: Twee controles plannen'
translations_gpt:
---

{% include menu.html %}

Hier is een manier om de opgave op te lossen.

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

1. `plan 2` geeft het aantal voordat er een test draait. Daarom komt de regel `1..2` eerst. Misschien voert het bestand een ander aantal controles uit. Dan faalt de hele reeks tests. `done-testing` kan je niet zo beschermen.

1. `is-deeply` controleert of de twee lijsten precies gelijk zijn, en hun types ook. Sorteren van `3, 1, 2` geeft `1, 2, 3`. Dat komt overeen.

1. `is` controleert of twee waarden gelijk zijn. Als ze dat niet zijn, toont het beide waarden. Hier is `10 % 3` gelijk aan `1`. Dat is de verwachte waarde. De tweede test slaagt dus ook.

{% include nav.html %}
