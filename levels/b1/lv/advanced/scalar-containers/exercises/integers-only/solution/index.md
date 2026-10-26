---
title: 'Risinājums: Tikai veseli skaitļi'
translations_gpt:
---

{% include menu.html %}

Šeit ir viens iespējams uzdevuma risinājums.

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

1. Tipa ierobežojums `Int` kodā `my Int $cars` liek konteineram atteikt visas vērtības, kas nav veseli skaitļi. Tieši piešķirot `250.7`, kas ir `Rat`, jūs saņemtu kompilēšanas laika kļūdu.

1. `.Int` izsaukums racionālajai vērtībai `250.7` pārveido to par veselu skaitli `250`. Tas vienkārši atmet daļskaitļa daļu. Jaunā vērtība der konteineram. Nejauciet to ar noapaļošanu.

1. Pseidometode `.WHAT` parāda, ka vērtībai konteinerā ir tips `Int`.

{% include nav.html %}
