---
title: 'Risinājums: Tikai veseli skaitļi'
translations_gpt:
---

{% include menu.html %}

Šeit ir viens veids, kā atrisināt uzdevumu.

## Kods

```raku
my Int $cars;

$cars = 250.7.Int;
say $cars;
say $cars.WHAT;
```

🦋 Atrodiet programmu failā [integers-only.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/scalar-containers/integers-only.raku).

## Izvade

```
250
(Int)
```

## Komentāri

1. Tipa ierobežojums `Int` kodā `my Int $cars` ir noteikums konteineram. Konteineris nepieņem vērtības, kas nav veseli skaitļi. Jūs nevarat tieši piešķirt `250.7`. Šī vērtība ir `Rat`. Raku dod kļūdu kompilēšanas laikā, pirms programma sāk darboties.

1. Programma izsauc `.Int` racionālajai vērtībai `250.7`. Tas pārveido to par veselu skaitli `250`. Metode vienkārši atmet daļu aiz punkta. Jaunā vērtība der konteineram. Ievērojiet, ka tas nav tas pats, kas noapaļošana.

1. Pseidometode `.WHAT` parāda saglabātās vērtības tipu. Tas ir `Int`.

{% include nav.html %}
