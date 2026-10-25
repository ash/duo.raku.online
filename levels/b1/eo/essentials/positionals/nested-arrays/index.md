---
title: Nestitaj tabeloj
---

{% include menu.html %}

Tabeloj povas enhavi ajnajn aliajn datumojn, kaj tio inkluzivas aliajn tabelojn. Por marki, kie ĉiu nestita tabelo komenciĝas kaj finiĝas, uzu kvadratajn krampojn:

```raku
my @table = 
    [1, 2, 3, 4],
    [10, 20, 30, 40],
    [100, 200, 300, 400];
```

Vi ankaŭ povas meti unu plian paron de krampoj ĉirkaŭ la supra-nivela tabelo. Ĉi tiu ekzemplo montras la saman datumstrukturon kiel la antaŭa.

```raku
my @table = [
    [1, 2, 3, 4],
    [10, 20, 30, 40],
    [100, 200, 300, 400]
];
```

Por preni la internajn erojn, aldonu tiom da indeksoj, kiom vi bezonas. Ĉiu paro de kvadrataj krampoj portas vin unu nivelon pli profunden en la strukturon:

```raku
say @table[0][3]; # Presas 4
say @table[2][1]; # Presas 200 
```

{% include nav.html %}
