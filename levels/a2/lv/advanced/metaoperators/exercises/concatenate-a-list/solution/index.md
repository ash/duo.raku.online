---
title: 'Risinājums: Veidot URL'
translations_gpt:
---

{% include menu.html %}

Šeit ir viens veids, kā atrisināt uzdevumu.

## Kods

```raku
my @parts = <http :// example .com>;

my $url = [~] @parts;
say $url;
say $url.chars;
```

🦋 Programmas pirmkodu var atrast failā [concatenate-a-list.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/metaoperators/concatenate-a-list.raku).

## Izvade

```
http://example.com
18
```

## Komentāri

1. Masīvs izmanto citēšanas formu ar leņķa iekavām, `<...>`. Tas ir tas pats, kas `'http', '://', 'example', '.com'`.

1. `[~]` ir redukcijas metaoperators. Tas ieliek operatoru `~` starp visiem elementiem. Operators `~` savieno virknes. Tāpēc `[~] @parts` savieno četrus gabalus vienā virknē, `http://example.com`.

1. Rezultāts ir mainīgajā `$url`. Tāpēc mēs varam to izmantot vēlreiz. `$url.chars` dod visa URL garumu. Tas ir `18` rakstzīmes garš.

{% include nav.html %}
