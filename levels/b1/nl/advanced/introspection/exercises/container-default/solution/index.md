---
title: 'Solution: De standaardwaarde van de container'
---

{% include menu.html %}

Hier is een mogelijke oplossing.

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

1. De `is default(0)`-trait geeft de container een standaardwaarde. Er is nog niets toegewezen, dus als je `$count` leest, krijg je deze standaardwaarde. Daarom drukt de eerste regel `0` af.

1. `.VAR.default` vraagt de container zelf naar de standaardwaarde die hij heeft gekregen, en die is ook `0`. Zonder de trait zou de standaardwaarde van een container zonder type `(Any)` zijn.

{% include nav.html %}
