---
title: 'Risinājums: Hešu indeksēšana'
translations_gpt:
---

{% include menu.html %}

Šeit ir viens veids, kā atrisināt uzdevumu.

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

1. Indekss `< >` ir postcirkumfiksa operators. Tas atrodas aiz terma, šeit aiz heša. Un tas stāv ap atslēgu.

1. `%h<a>` atgriež vērtību atslēgai `a`. Šī vērtība ir `1`.

{% include nav.html %}
