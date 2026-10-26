---
title: 'Risinājums: Trīskāršot'
translations_gpt:
---

{% include menu.html %}

Šeit ir viens iespējams uzdevuma risinājums.

## Kods

```raku
my $factor = 3;
my $scale = -> $x { $x * $factor };

say $scale(7);
```

🦋 Atrodiet programmu failā [triple-it.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/anonymous-subroutines/triple-it.raku).

## Izvade

```
21
```

## Komentāri

1. Bultiņas blokam ir tikai viens parametrs, `$x`. Tomēr tas izmanto `$factor` — mainīgo no redzamības apgabala ap to. Tieši šādu mainīgo satveršana padara to par slēgumu.

1. Kad `$factor` ir `3`, izsaukums `$scale(7)` dod `21`. Ja jūs nomaināt `$factor`, tas pats bloks reizina ar jauno vērtību:

```raku
$factor = 5;
say $scale(7); # 35
```

Slēgums satver pašu *mainīgo*. Tas nesatver vērtību, kāda bija brīdī, kad bloks tika uzrakstīts. Tāpēc vēlākais izsaukums redz jauno `$factor` un atgriež `35`.

{% include nav.html %}
