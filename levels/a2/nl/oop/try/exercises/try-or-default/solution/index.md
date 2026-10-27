---
title: 'Oplossing: Try of standaardwaarde'
translations_gpt:
---

{% include menu.html %}

Hier is een manier om de taak op te lossen.

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

1. Het `try`-blok mislukt. Dus is zijn waarde ongedefinieerd.

1. Dus geeft de defined-or-operator `//` zijn rechterkant terug. Dat is `'default'`. Zo ga je op een nette manier verder na een mislukking. Je hebt maar één regel en een terugvalwaarde nodig.

{% include nav.html %}
