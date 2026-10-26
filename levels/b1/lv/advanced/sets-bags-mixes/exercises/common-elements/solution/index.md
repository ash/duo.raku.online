---
title: 'Risinājums: Kopīgie elementi'
translations_gpt:
---

{% include menu.html %}

Šeit ir viens iespējams uzdevuma risinājums.

## Kods

```raku
my $a = set(<apple banana cherry>);
my $b = set(<banana cherry date>);

my $common = $a ∩ $b;
say $common.elems;
say 'apple' ∈ $common;
```

🦋 Atrodiet programmu failā [common-elements.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/sets-bags-mixes/common-elements.raku).

## Izvade

```
2
False
```

## Komentāri

1. Šķēlums `$a ∩ $b` pats ir kopa, šeit `{banana, cherry}`. Tāpēc tajā ir `2` elementi. Ja jums labāk patīk ASCII, `∩` vietā rakstiet `(&)`.

1. Šķēlums ir kopa, tāpēc `∈` var pateikt, vai vērtība ir tajā. `apple` ir tikai pirmajā kopā, tāpēc šķēlumā tās nav. Pārbaude atgriež `False`.

{% include nav.html %}
