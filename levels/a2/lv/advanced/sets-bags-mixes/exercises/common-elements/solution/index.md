---
title: 'Risinājums: Kopīgie elementi'
translations_gpt:
---

{% include menu.html %}

Šeit ir viens veids, kā atrisināt uzdevumu.

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

1. Šķēlums `$a ∩ $b` arī ir kopa. Šeit tas ir `{banana, cherry}`. Tāpēc tajā ir `2` elementi. Ja jūs gribat ASCII, rakstiet `(&)`, nevis `∩`.

1. Šķēlums ir kopa. Tāpēc `∈` var pārbaudīt, vai vērtība ir tajā. `apple` ir tikai pirmajā kopā. Tāpēc tās nav šķēlumā. Pārbaude atgriež `False`.

{% include nav.html %}
