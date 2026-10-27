---
title: 'Risinājums: Klašu rombs'
translations_gpt:
---

{% include menu.html %}

Šeit ir viens veids, kā atrisināt uzdevumu.

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

1. `D` manto no divām vecākklasēm reizē. Kodā `class D is B is C` katrai vecākklasei ir savs `is`. To sauc par daudzkārtēju mantošanu. Klases `A`, `B`, `C` un `D` veido *rombu*. No `D` uz augšu līdz `A` ir divi ceļi. `A` ir gan `B`, gan `C` vecākklase.

1. `.^mro` pārvērš rombu par vienu taisnu līniju. Raku meklē šādā secībā. Vispirms nāk `D`. Tad nāk tā vecākklases, `B` un `C`. Tās nāk tādā secībā kā kodā. Tad nāk `A`, kopīgā vecākklase. Beigās nāk `Any` un `Mu`.

1. Gan `B`, gan `C` ved uz `A`. Bet tips `A` ir sarakstā tikai **vienreiz**. Un tas nāk pēc abiem. Tas ir metožu atrisināšanas secības mērķis. Raku apmeklē katru tipu tieši vienu reizi. Vecākklase nekad nenāk pirms savas bērnklases. Tāpēc Raku vienmēr vispirms atrod metodi klasē `B`. Tas to atrod pirms metodes klasē `A`, ko tā pārraksta.

{% include nav.html %}
