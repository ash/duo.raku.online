---
title: 'Risinājums: Kvadrāti'
translations_gpt:
---

{% include menu.html %}

Šeit ir viens veids, kā atrisināt uzdevumu.

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

1. Pārbaude `if $_ %% 2` izlemj, *vai* kods paņem vērtību. `$_ ** 2` izlemj, *ko* tas paņem. Pārbaudi iztur tikai pāra skaitļi `2`, `4`, `6`.

1. To kvadrāti ir `4`, `16`, `36`. Tikai šīs vērtības nonāk līdz `take`. Tāpēc `gather` savāc tieši šīs vērtības. Šeit viens `take` gan izvēlas, gan maina vērtības. Vienkāršs `map` to nevar pateikt tik skaidri.

{% include nav.html %}
