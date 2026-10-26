---
title: 'Risinājums: Izgūt hešu'
translations_gpt:
---

{% include menu.html %}

Šeit ir viens iespējams uzdevuma risinājums.

## Kods

```raku
my %h = beta => 2, alpha => 1;
dd %h;
```

🦋 Atrodiet programmu failā [dump-a-hash.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/dd/dump-a-hash.raku).

## Izvade

```
{:alpha(1), :beta(2)}
```

## Komentāri

1. `dd` izdrukā jaukteni kodam līdzīgā formā. Katru pāri tā parāda kā `:atslēga(vērtība)`.

1. Atslēgas tiek izdrukātas sakārtotā secībā, tāpēc `alpha` ir pirms `beta`. Tā notiek, lai gan `beta` bija uzrakstīta pirmā.

{% include nav.html %}
