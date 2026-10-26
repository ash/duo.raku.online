---
title: 'Risinājums: Map ar kolu'
translations_gpt:
---

{% include menu.html %}

Šeit ir viens iespējams uzdevuma risinājums.

## Kods

```raku
say (1..10).map(* * 2).grep: * > 10;
```

🦋 Atrodiet programmu failā [colon-map.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/colon-calls/colon-map.raku).

## Izvade

```
(12 14 16 18 20)
```

## Komentāri

1. Kola forma ir iespējama tikai `grep`, ķēdes pēdējam izsaukumam. Kols padara `* > 10` par tā argumentu, tieši tāpat kā `grep(* > 10)`. Mums joprojām jāizdrukā rezultāts. Tāpēc tagad `say` tiek lietots kā funkcija, nevis kā metode.

1. Izsaukumam `map` jāpatur savas iekavas. Pieņemsim, ka jūs tā vietā uzrakstītu `.map: * * 2`. Tad kols paņemtu arī `.grep(* > 10)` kā `map` argumentu. Tāpēc ķēde salūztu.

{% include nav.html %}
