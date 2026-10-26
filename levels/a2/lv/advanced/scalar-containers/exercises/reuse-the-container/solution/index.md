---
title: 'Risinājums: Tipizēts vai netipizēts'
translations_gpt:
---

{% include menu.html %}

Šeit ir viens veids, kā atrisināt uzdevumu.

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

1. `dd` parāda abus konteinerus dažādi. Konteineram bez tipa tā izdrukā tikai `$untyped`. Konteineram ar tipu tā pieliek priekšā deklarēto tipu: `Int $typed`. Tieši to maina deklarēts tips.

1. Arī tukšās vērtības ir dažādas. Konteineris bez tipa sākas ar `Any`. Tā ir pamata nedefinētā vērtība. Konteineris ar tipu sākas ar *sava* tipa nedefinēto vērtību. Šeit tā ir `Int`.

1. Tad abi mainīgie saņem `42`. Tagad vērtības izskatās vienādas. Bet `$typed` joprojām saglabā savu tipu. Tas nepieņem vērtību, kas nav vesels skaitlis. `$untyped` pieņem jebkuru vērtību.

{% include nav.html %}
