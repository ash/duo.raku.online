---
title: 'Risinājums: Nolasīt konstanti'
translations_gpt:
---

{% include menu.html %}

Šeit ir viens veids, kā atrisināt uzdevumu.

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

1. `need Circle` ielādē moduli. Bet tas neimportē nevienu nosaukumu. Tāpēc Raku nepazīst `$pi` vienu pašu, bez moduļa nosaukuma.

1. Jūs piekļūstat `our` mainīgajam caur moduļa nosaukumu. Jūs to rakstāt kā `$Circle::pi`.

{% include nav.html %}
