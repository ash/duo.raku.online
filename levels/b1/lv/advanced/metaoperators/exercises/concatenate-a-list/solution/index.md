---
title: 'Risinājums: Veidot URL'
translations_gpt:
---

{% include menu.html %}

Šeit ir viens iespējams uzdevuma risinājums.

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

1. Masīvs ir uzrakstīts ar leņķa iekavu citēšanas formu `<...>`. Tas nozīmē to pašu, ko `'http', '://', 'example', '.com'`.

1. Redukcijas metaoperators `[~]` ievieto operatoru `~` starp visiem elementiem. Šis operators savieno virknes. Tāpēc `[~] @parts` salīmē četrus gabalus vienā virknē `http://example.com`.

1. Mēs saglabājam rezultātu mainīgajā `$url`, lai varētu to izmantot vēlreiz. Tad `$url.chars` parāda, ka viss URL ir `18` rakstzīmes garš.

{% include nav.html %}
