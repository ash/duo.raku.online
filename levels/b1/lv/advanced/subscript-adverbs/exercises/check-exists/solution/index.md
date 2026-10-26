---
title: 'Risinājums: Vai atslēga eksistē'
translations_gpt:
---

{% include menu.html %}

Šeit ir viens iespējams uzdevuma risinājums.

## Kods

```raku
my %h = a => 1, b => 2;
say %h<z>:exists;
```

🦋 Atrodiet programmu failā [check-exists.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/subscript-adverbs/check-exists.raku).

## Izvade

```
False
```

## Komentāri

1. Apstākļvārds `:exists` pasaka, vai atslēga ir klāt. Tas nepaņem vērtību.

1. Jauktenī nav atslēgas `z`, tāpēc rezultāts ir `False`. Parasta meklēšana var izveidot atslēgu kā blakusefektu, bet `:exists` to nedara.

{% include nav.html %}
