---
title: 'Solution: Getypt of ongetypt'
translations_gpt:
---

{% include menu.html %}

Hier is een manier om de opgave op te lossen.

## Code

```raku
my $untyped;
my Int $typed;

dd $untyped;
dd $typed;

$untyped = 42;
$typed = 42;

dd $untyped;
dd $typed;
```

🦋 Je kunt de broncode vinden in het bestand [reuse-the-container.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/scalar-containers/reuse-the-container.raku).

## Uitvoer

```
$untyped = Any
Int $typed = Int
$untyped = 42
Int $typed = 42
```

## Opmerkingen

1. `dd` toont de twee containers op verschillende manieren. Voor de container zonder type drukt het alleen `$untyped` af. Voor de container met type zet `dd` het gedeclareerde type ervoor: `Int $typed`. Dat is precies wat een gedeclareerd type verandert.

1. De lege waarden zijn ook anders. Een container zonder type begint met `Any`. Dat is de ongedefinieerde basiswaarde. Een container met type begint met de ongedefinieerde waarde van *zijn* type. Hier is dat `Int`.

1. Daarna krijgen beide variabelen `42`. Nu zien de waarden er hetzelfde uit. Maar `$typed` heeft nog steeds zijn type. Die accepteert geen waarde die geen geheel getal is. `$untyped` accepteert elke waarde.

{% include nav.html %}
