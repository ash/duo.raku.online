---
title: Galapunktu izslēgšana
---

{% include menu.html %}

Jūs varat izslēgt vienu diapazona galu vai abus galus. Lai to izdarītu, pievienojiet diapazona operatoram rakstzīmi `^`. Šādā veidā jūs varat izveidot vēl trīs operatorus. Komentāros ir uzskaitīti skaitļi, ko ģenerē katrs diapazons.

```raku
1 ..^ 5;  # 1, 2, 3, 4
1 ^.. 5;  #    2, 3, 4, 5
1 ^..^ 5; #    2, 3, 4
```

Tādos vienkāršos gadījumos kā šie jūs varat izlaist atstarpes ap operatoru:

```raku
my $r1 = 1..5;
my $r2 = 1..^5;
```

Diapazonam, kas sākas ar 0, piemēram, `0..^5`, ir īsa forma: `^5`.

{% include nav.html %}
