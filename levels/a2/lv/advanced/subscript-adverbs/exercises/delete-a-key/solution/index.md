---
title: 'Risinājums: Dzēst atslēgu'
translations_gpt:
---

{% include menu.html %}

Šeit ir viens veids, kā atrisināt uzdevumu.

## Kods

```raku
my %h = a => 1, b => 2, c => 3;
%h<b>:delete;
say %h.elems;
```

🦋 Atrodiet programmu failā [delete-a-key.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/subscript-adverbs/delete-a-key.raku).

## Izvade

```
2
```

## Komentāri

1. Apstākļvārds `:delete` noņem ierakstu no jaukteņa. Tas arī atgriež vērtību, bet šeit mēs to neizmantojam.

1. Sākumā jauktenī bija trīs ieraksti. Tagad tajā ir `2`. Tātad viena ieraksta vairs nav. Mēs saskaitām ierakstus ar `.elems`. Atslēgu secībai te nav nozīmes. Tāpēc izvade vienmēr ir vienāda.

{% include nav.html %}
