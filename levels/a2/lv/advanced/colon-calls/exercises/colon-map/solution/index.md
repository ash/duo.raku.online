---
title: 'Risinājums: Map ar kolu'
translations_gpt:
---

{% include menu.html %}

Šeit ir viens veids, kā atrisināt uzdevumu.

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

1. Kola formu var lietot tikai `grep`. Tas ir ķēdes pēdējais izsaukums. Kols padara `* > 10` par tā argumentu. Tas ir tieši tāpat kā `grep(* > 10)`. Mums joprojām jāizdrukā rezultāts. Tāpēc tagad mēs lietojam `say` kā funkciju, nevis kā metodi.

1. Izsaukumam `map` jāpatur savas iekavas. Ja jūs rakstāt `.map: * * 2`, rodas problēma. Kols paņem arī `.grep(* > 10)`. Tas kļūst par daļu no `map` argumentiem. Tad ķēde salūst.

{% include nav.html %}
