---
title: 'Risinājums: Anonīms kvadrāts'
translations_gpt:
---

{% include menu.html %}

Šeit ir viens iespējams uzdevuma risinājums.

## Kods

```raku
say (1, 2, 3).map(sub ($x) { $x * $x });
```

🦋 Atrodiet programmu failā [anonymous-square.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/anonymous-subroutines/anonymous-square.raku).

## Izvade

```
(1 4 9)
```

## Komentāri

1. `sub ($x) { $x * $x }` nav nosaukuma, un to nekad neglabā mainīgajā. Tā nonāk tieši pie `map` kā arguments.

1. `map` to piemēro katram `1, 2, 3` elementam un kāpina tos kvadrātā, kas dod `(1 4 9)`. Šāda tieša nodošana ir visbiežākais iemesls, kāpēc raksta anonīmu apakšprogrammu.

{% include nav.html %}
