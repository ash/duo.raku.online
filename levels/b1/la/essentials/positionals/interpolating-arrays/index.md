---
title: Interpolando array
---

{% include menu.html %}

Elementa array in chordis duplici-quotatis interpolare potes. Scribe ea sicut in ipso programmate: `@data[1]`. Ut totum array interpoles, par bracketorum vacuorum adde: `@data[]`. Programma sequens ostendit quomodo hoc operetur:

```raku
my @data = 10, 20, 30;

say "Primus: @data[0], ultimus: @data[1]";
say "Omnes elementa: @data[]";
```

Hoc programma data quae petivimus imprimit:

```console
$ raku t.raku 
Primus: 10, ultimus: 20
Omnes elementa: 10 20 30
```

{% include nav.html %}
