---
title: 'Risinājums: Saskaitīt un summēt'
translations_gpt:
---

{% include menu.html %}

Šeit ir viens iespējams uzdevuma risinājums.

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

1. Konstantes ir uzrakstītas kā pāri. Tāpēc katra iegūst mūsu izvēlēto vērtību, nevis automātisko numuru no nulles.

1. `.enums` atgriež attēlojumu, kurā katrs konstantes nosaukums norāda uz savu vērtību. `.elems` saskaita ierakstus, un monētu ir četras.

1. `.values` dod tikai skaitļus, kas stāv aiz nosaukumiem. Pēc tam `.sum` tos saskaita: `1 + 5 + 10 + 25` ir `41`.

{% include nav.html %}
