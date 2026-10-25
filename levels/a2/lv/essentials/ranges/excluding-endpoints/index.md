---
title: Galapunktu izslēgšana
---

{% include menu.html %}

Jūs varat neiekļaut diapazonā vienu galu vai abus galus. Lai to izdarītu, pievienojiet diapazona operatoram rakstzīmi `^`. Tā jūs iegūstat vēl trīs operatorus. Komentāri parāda skaitļus, ko dod katrs diapazons.

```raku
1 ..^ 5;  # 1, 2, 3, 4
1 ^.. 5;  #    2, 3, 4, 5
1 ^..^ 5; #    2, 3, 4
```

Gadījumi augstāk ir vienkārši. Šādos gadījumos jūs varat izlaist atstarpes ap diapazona operatoru:

```raku
my $r1 = 1..5;
my $r2 = 1..^5;
```

Daži diapazoni sākas ar 0, piemēram, `0..^5`. Ir īss veids, kā uzrakstīt šādu diapazonu: `^5`.

{% include nav.html %}
