---
title: 'Risinājums: Saskaitīt un summēt'
translations_gpt:
---

{% include menu.html %}

Šeit ir viens veids, kā atrisināt uzdevumu.

## Kods

```raku
enum Coin (penny => 1, nickel => 5, dime => 10, quarter => 25);

say Coin.enums.elems;
say Coin.enums.values.sum;
```

🦋 Atrodiet programmu failā [enum-introspection.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/enumerations/enum-introspection.raku).

## Izvade

```
4
41
```

## Komentāri

1. Mēs rakstām konstantes kā pārus. Tāpēc mēs paši izvēlamies katras konstantes vērtību. Raku tās nenumurē no nulles.

1. `.enums` atgriež attēlojumu. Attēlojums ir līdzīgs hešam. Tajā katram konstantes nosaukumam ir sava vērtība. `.elems` saskaita ierakstus. Monētu ir četras.

1. `.values` paņem tikai skaitļus aiz nosaukumiem. `.sum` tos saskaita: `1 + 5 + 10 + 25` ir `41`.

{% include nav.html %}
