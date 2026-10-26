---
title: 'Risinājums: Vai atslēga eksistē'
translations_gpt:
---

{% include menu.html %}

Šeit ir viens veids, kā atrisināt uzdevumu.

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

1. Apstākļvārds `:exists` pasaka, vai atslēga ir tur. Tas nepaņem vērtību.

1. Jauktenī nav atslēgas `z`. Tāpēc rezultāts ir `False`. Parasta meklēšana var izveidot atslēgu kā blakusefektu. `:exists` to nedara.

{% include nav.html %}
