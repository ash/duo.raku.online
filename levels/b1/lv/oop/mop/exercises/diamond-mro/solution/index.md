---
title: 'Risinājums: Klašu rombs'
translations_gpt:
---

{% include menu.html %}

Šeit ir viens iespējams risinājums.

## Kods

```raku
class A {
}

class B is A {
}

class C is A {
}

class D is B is C {
}

say D.^mro.map(*.^name);
```

🦋 Atrodiet programmu failā [diamond-mro.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/mop/diamond-mro.raku).

## Izvade

```
(D B C A Any Mu)
```

## Komentāri

1. `D` manto uzreiz no divām vecākklasēm: `class D is B is C` uzskaita katru no tām ar savu `is`. Tā ir daudzkārtēja mantošana. Kopā `A`, `B`, `C` un `D` veido *rombu*. No `D` uz augšu līdz kopīgajam priekštecim `A` ved divi ceļi.

1. `.^mro` saplacina rombu vienā taisnā meklēšanas secībā. Vispirms nāk `D`, tad tā vecākklases `B` un `C` tādā secībā, kādā jūs tās uzrakstījāt. Tad nāk kopīgā `A` un visbeidzot `Any` un `Mu`.

1. Gan `B`, gan `C` ved uz `A`. Tomēr tips `A` parādās tikai **vienreiz**, un tikai pēc abiem. Tāda ir metožu atrisināšanas secības jēga. Katrs tips tiek apmeklēts tieši vienu reizi. Un vecākklase nekad nenāk pirms bērnklases, kas no tās manto. Tāpēc Raku vienmēr atrod metodi klasē `B` pirms tās metodes klasē `A`, ko tā pārraksta.

{% include nav.html %}
