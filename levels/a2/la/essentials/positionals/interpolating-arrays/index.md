---
title: Interpolando array
---

{% include menu.html %}

Elementa array in chordis duplici-quotatis interpolare potes. Scribe ea eodem modo ac in codice programmatis: `@data[1]`. Ut totum array interpoles, par bracketorum vacuorum adde: `@data[]`. Hoc programma ostendit quomodo operatur:

```raku
my @data = 10, 20, 30;

say "Primus: @data[0], ultimus: @data[1]";
say "Omnes elementa: @data[]";
```

Programma data quae volumus imprimit:

```console
$ raku t.raku 
Primus: 10, ultimus: 20
Omnes elementa: 10 20 30
```

{% include nav.html %}
