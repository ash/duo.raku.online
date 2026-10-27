---
title: 'Oplossing: Try of standaardwaarde'
translations_gpt:
---

{% include menu.html %}

Hier is een mogelijke oplossing.

## Code

```raku
my $r = try { die 'no' } // 'default';

say $r;
```

🦋 Je kunt de broncode vinden in het bestand [try-or-default.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/try/try-or-default.raku).

## Uitvoer

```
default
```

## Opmerkingen

1. Het mislukkende `try`-blok geeft een ongedefinieerde waarde.

1. Daarom geeft de defined-or-operator `//` zijn rechterkant terug, `'default'`. Dit is een nette manier om in één regel met een terugvalwaarde te herstellen.

{% include nav.html %}
