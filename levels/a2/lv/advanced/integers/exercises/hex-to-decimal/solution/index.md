---
title: 'Risinājums: Heksadecimālais uz decimālo'
translations_gpt:
---

{% include menu.html %}

Šeit ir viens veids, kā atrisināt uzdevumu.

## Kods

```raku
my $n = :16<1A>;

say $n;
say $n.base(16);
```

🦋 Programmas pirmkodu var atrast failā [hex-to-decimal.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/integers/hex-to-decimal.raku).

## Izvade

```
26
1A
```

## Komentāri

1. Radiksa forma `:16<1A>` nolasa `1A` kā skaitli bāzē 16. Tā vērtība ir `1 × 16 + 10 = 26`. Tagad mainīgais `$n` glabā šo vērtību kā parastu veselu skaitli.

1. `$n.base(16)` pārvērš veselo skaitli atpakaļ par virkni bāzē 16. Rezultāts atkal ir `1A`. Tātad nolasīšana bāzē un drukāšana bāzē ir pretējas darbības.

{% include nav.html %}
