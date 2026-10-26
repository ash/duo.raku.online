---
title: 'Risinājums: Nolasīt konstanti'
translations_gpt:
---

{% include menu.html %}

Šeit ir viens iespējams risinājums.

## Kods

Programma `read-pi.raku`:

```raku
need Circle;

say $Circle::pi;
```

🦋 Abus pirmkoda failus atrodiet direktorijā [exercises/advanced/modules-basics/read-the-constant](https://github.com/ash/raku-course/tree/master/exercises/advanced/modules-basics/read-the-constant).

## Izvade

```console
$ raku -I. read-pi.raku
3.14
```

## Komentāri

1. `need Circle` ielādē moduli, bet neimportē nevienu nosaukumu. Tāpēc Raku neatpazītu `$pi` vienu pašu.

1. Programma sasniedz `our` mainīgo caur moduļa nosaukumu, kā `$Circle::pi`.

{% include nav.html %}
