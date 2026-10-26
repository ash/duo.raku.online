---
title: 'Risinājums: Atslēga un vērtība'
translations_gpt:
---

{% include menu.html %}

Šeit ir viens iespējams uzdevuma risinājums.

## Kods

```raku
my %h = x => 10, y => 20;
say %h<x>:kv;
```

🦋 Atrodiet programmu failā [key-and-value.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/subscript-adverbs/key-and-value.raku).

## Izvade

```
(x 10)
```

## Komentāri

1. Apstākļvārds `:kv` dod jums gan atslēgu, gan vērtību sarakstā.

1. Jauktenim atslēga ir nosaukums, ko jūs izmantojat indeksā. Tāpēc `%h<x>:kv` dod sarakstu `(x 10)`.

{% include nav.html %}
