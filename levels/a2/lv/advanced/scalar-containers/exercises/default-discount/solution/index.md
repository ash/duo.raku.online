---
title: 'Risinājums: Noklusējuma atlaide'
translations_gpt:
---

{% include menu.html %}

Šeit ir viens veids, kā atrisināt uzdevumu.

## Kods

```raku
my $discount is default(0);
say $discount;

$discount = 15;
say $discount;
```

🦋 Atrodiet programmu failā [default-discount.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/scalar-containers/default-discount.raku).

Protams, ir vienkāršāks risinājums. Dodiet mainīgajam vērtību `0`, kad jūs to izveidojat:

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

1. Iezīme `is default(0)` dod konteineram rezerves vērtību. Konteineris to lieto, līdz jūs kaut ko piešķirat. Ja jūs nolasāt mainīgo, jūs saņemat `0`. Bez deklarēta noklusējuma jūs saņemat brīdinājumu par _neinicializētu vērtību_. Šeit tāda brīdinājuma nav.

1. Pēc piešķiršanas konteineris glabā `15`. Noklusējuma vērtībai vairs nav nozīmes.

{% include nav.html %}
