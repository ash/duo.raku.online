---
title: 'Risinājums: Hešu indeksēšana'
translations_gpt:
---

{% include menu.html %}

Šeit ir viens iespējams uzdevuma risinājums.

## Kods

```raku
my %h = a => 1;
say %h<a>;
```

🦋 Šīs programmas pirmkodu var atrast failā [subscript-a-hash.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/operator-types/subscript-a-hash.raku).

## Izvade

```
1
```

## Komentāri

1. Indekss `< >` ir postcirkumfiksa operators. Tas atrodas aiz terma, heša, un aptver atslēgu.

1. `%h<a>` dod vērtību zem atslēgas `a`. Šī vērtība ir `1`.

{% include nav.html %}
