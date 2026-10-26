---
title: 'Risinājums: Atvērts diapazons'
translations_gpt:
---

{% include menu.html %}

Šeit ir viens veids, kā atrisināt uzdevumu.

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

1. Pirmās vērtības, `2, 4`, nosaka soli. Katrs skaitlis ir par diviem lielāks nekā iepriekšējais. Viena pati zvaigznīte beigās nozīmē, ka virkne nekad nebeidzas.

1. `head(4)` paņem tikai pirmās četras vērtības: `2, 4, 6, 8`. Virkne ir slinka. Tāpēc Raku nekad neaprēķina bezgalīgo atlikumu. Šeit viena pati zvaigznīte nozīmē «cik nu ir, bez augšējās robežas».

{% include nav.html %}
