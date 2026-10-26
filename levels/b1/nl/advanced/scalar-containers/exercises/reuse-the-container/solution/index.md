---
title: 'Solution: Getypt of ongetypt'
translations_gpt:
---

{% include menu.html %}

Hier is een mogelijke oplossing voor de opgave.

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

1. `dd` beschrijft de twee containers op een andere manier. Voor de container zonder type drukt het alleen `$untyped` af. Voor de container met type zet `dd` het gedeclareerde type ervoor: `Int $typed`. Dat voorvoegsel is precies wat een gedeclareerd type verandert.

1. Ook de lege waarden zijn anders. Een container zonder type begint met de eenvoudige ongedefinieerde waarde `Any`. Maar een container met type begint met de ongedefinieerde waarde van *zijn* type, `Int`.

1. Nadat je aan beide `42` toewijst, zien de waarden er hetzelfde uit. Maar `$typed` heeft nog steeds zijn type, dus die zou een niet-gehele waarde weigeren. `$untyped` accepteert daarentegen alles.

{% include nav.html %}
