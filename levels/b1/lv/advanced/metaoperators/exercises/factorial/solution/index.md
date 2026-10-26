---
title: 'Risinājums: Visi faktoriāli uzreiz'
translations_gpt:
---

{% include menu.html %}

Šeit ir viens iespējams uzdevuma risinājums.

## Kods

```raku
say [\*] 1..6;
```

🦋 Programmas pirmkodu var atrast failā [factorial.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/metaoperators/factorial.raku).

## Izvade

```
(1 2 6 24 120 720)
```

## Komentāri

1. Atpakaļsvītra iekavās padara `[*]` par *trīsstūra* redukciju. Tā nesamazina sarakstu līdz vienai vērtībai. Tā vietā tā saglabā katru daļējo reizinājumu: `1`, tad `1*2`, tad `1*2*3` un tā tālāk.

1. Katrs daļējais reizinājums `1*2*...*k` ir tieši _k!_. Tāpēc rezultāts ir faktoriālu saraksts no `1` līdz `6`. Vienkāršs `[*] 1..6` dotu tikai pēdējo no tiem, `720`.

{% include nav.html %}
