---
title: 'Risinājums: Kvadrāti'
translations_gpt:
---

{% include menu.html %}

Šeit ir viens iespējams uzdevuma risinājums.

## Kods

```raku
my @squares = gather for 1..6 {
    take $_ ** 2 if $_ %% 2;
};

say @squares;
```

🦋 Atrodiet programmu failā [squares.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/gather-take/squares.raku).

## Izvade

```
[4 16 36]
```

## Komentāri

1. Pārbaude `if $_ %% 2` izlemj, *vai* ņemt vērtību, bet `$_ ** 2` izlemj, *ko* ņemt. Šo pārbaudi iztur tikai pāra skaitļi `2`, `4`, `6`.

1. To kvadrāti `4`, `16`, `36` ir vienīgās vērtības, kas tiek nodotas `take`. Tāpēc `gather` savāc tieši tās. Šeit viens `take` vienlaikus filtrē un maina vērtības. Vienkāršs `map` to nevar izteikt tik skaidri.

{% include nav.html %}
