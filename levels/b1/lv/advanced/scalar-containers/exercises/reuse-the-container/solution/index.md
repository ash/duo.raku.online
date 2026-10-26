---
title: 'Risinājums: Tipizēts vai netipizēts'
translations_gpt:
---

{% include menu.html %}

Šeit ir viens iespējams uzdevuma risinājums.

## Kods

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

🦋 Atrodiet programmu failā [reuse-the-container.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/scalar-containers/reuse-the-container.raku).

## Izvade

```
$untyped = Any
Int $typed = Int
$untyped = 42
Int $typed = 42
```

## Komentāri

1. `dd` apraksta abus konteinerus atšķirīgi. Konteineram bez tipa tā izdrukā tikai `$untyped`. Konteineram ar tipu tā liek priekšā deklarēto tipu: `Int $typed`. Tieši šis priedēklis ir tā atšķirība, ko rada deklarēts tips.

1. Arī tukšās vērtības ir atšķirīgas. Konteineris bez tipa sākas ar vienkāršo nedefinēto vērtību `Any`. Bet konteineris ar tipu sākas ar *sava* tipa nedefinēto vērtību `Int`.

1. Kad jūs abiem piešķirat `42`, vērtības izskatās vienādas. Bet `$typed` joprojām saglabā savu tipu, tāpēc tas nepieņemtu vērtību, kas nav vesels skaitlis. Savukārt `$untyped` pieņem jebko.

{% include nav.html %}
