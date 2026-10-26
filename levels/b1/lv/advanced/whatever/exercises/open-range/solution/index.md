---
title: 'Risinājums: Atvērts diapazons'
translations_gpt:
---

{% include menu.html %}

Šeit ir viens iespējams uzdevuma risinājums.

## Kods

```raku
say (2, 4 ... *).head(4);
```

🦋 Atrodiet programmu failā [open-range.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/whatever/open-range.raku).

## Izvade

```
(2 4 6 8)
```

## Komentāri

1. Sākumvērtības `2, 4` nosaka aritmētisko soli: katrs jaunais skaitlis ir par diviem lielāks. Pati par sevi `*` beigās nozīmē, ka virkne nekad nebeidzas.

1. `head(4)` paņem tikai pirmās četras vērtības, `2, 4, 6, 8`. Virkne ir slinka, tāpēc bezgalīgo atlikumu nekad neaprēķina. Šeit zvaigznīte pati par sevi nozīmē «cik nu ir, bez augšējās robežas».

{% include nav.html %}
