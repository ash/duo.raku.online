---
title: 'Risinājums: Izgūt hešu'
translations_gpt:
---

{% include menu.html %}

Šeit ir viens veids, kā atrisināt uzdevumu.

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

1. `dd` izdrukā jaukteni kodam līdzīgā formā. Katrs pāris izskatās kā `:atslēga(vērtība)`.

1. Atslēgas iznāk sakārtotā secībā. Tāpēc `alpha` ir pirms `beta`. Bet kodā `beta` ir pirmā.

{% include nav.html %}
