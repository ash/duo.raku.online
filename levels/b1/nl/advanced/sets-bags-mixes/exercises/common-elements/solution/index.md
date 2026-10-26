---
title: 'Solution: Gemeenschappelijke elementen'
translations_gpt:
---

{% include menu.html %}

Hier is een mogelijke oplossing.

## Code

```raku
my $a = set(<apple banana cherry>);
my $b = set(<banana cherry date>);

my $common = $a ∩ $b;
say $common.elems;
say 'apple' ∈ $common;
```

🦋 Je kunt de broncode vinden in het bestand [common-elements.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/sets-bags-mixes/common-elements.raku).

## Uitvoer

```
2
False
```

## Opmerkingen

1. De doorsnede `$a ∩ $b` is zelf een set, hier `{banana, cherry}`. Hij heeft dus `2` elementen. Als je liever ASCII gebruikt, schrijf dan `(&)` in plaats van `∩`.

1. De doorsnede is een set, dus `∈` kan je vertellen of een waarde erin zit. `apple` zit alleen in de eerste set, dus het zit niet in de doorsnede. De test geeft `False` terug.

{% include nav.html %}
