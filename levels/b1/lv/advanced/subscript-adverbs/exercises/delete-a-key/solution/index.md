---
title: 'Risinājums: Dzēst atslēgu'
translations_gpt:
---

{% include menu.html %}

Šeit ir viens iespējams uzdevuma risinājums.

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

1. Apstākļvārds `:delete` noņem ierakstu no jaukteņa. Tas arī atgriež vērtību, bet šeit mēs to ignorējam.

1. Sākumā jauktenī bija trīs ieraksti, un tagad tajā ir `2`. Tas parāda, ka viens ir noņemts. Mēs skaitām ar `.elems`, kas nav atkarīgs no atslēgu secības. Tāpēc izvade vienmēr ir vienāda.

{% include nav.html %}
