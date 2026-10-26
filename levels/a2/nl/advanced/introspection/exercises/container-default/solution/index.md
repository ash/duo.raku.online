---
title: 'Solution: De standaardwaarde van de container'
---

{% include menu.html %}

Hier is een manier om de opgave op te lossen.

## Code

```raku
my $count is default(0);

say $count;
say $count.VAR.default;
```

🦋 Je kunt de broncode vinden in het bestand [container-default.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/introspection/container-default.raku).

## Uitvoer

```
0
0
```

## Opmerkingen

1. De trait `is default(0)` geeft de container een standaardwaarde. Het programma wijst niets toe aan `$count`. Dus geeft `$count` de standaardwaarde terug. De eerste regel drukt `0` af.

1. `.VAR.default` vraagt de container naar zijn standaardwaarde. Die is ook `0`. Zonder de trait is de standaardwaarde anders. Een container zonder type heeft dan de standaardwaarde `(Any)`.

{% include nav.html %}
