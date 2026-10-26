---
title: 'Risinājums: Noklusējuma atlaide'
translations_gpt:
---

{% include menu.html %}

Šeit ir viens iespējams uzdevuma risinājums.

## Kods

```raku
my $discount is default(0);
say $discount;

$discount = 15;
say $discount;
```

🦋 Atrodiet programmu failā [default-discount.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/scalar-containers/default-discount.raku).

Protams, būtu vienkāršāk uzreiz dot mainīgajam vērtību `0`:

```raku
my $discount = 0;
say $discount;

$discount = 15;
say $discount;
```

## Izvade

```
0
15
```

## Komentāri

1. Iezīme `is default(0)` dod konteineram vērtību, ko lietot, kamēr tam nekas nav piešķirts. Kad jūs nolasāt mainīgo, jūs saņemat `0`. Atšķirībā no nedeklarēta noklusējuma, šeit nav brīdinājuma par _neinicializētu vērtību_.

1. Pēc piešķiršanas konteineris satur `15`, un noklusējuma vērtība vairs nav svarīga.

{% include nav.html %}
