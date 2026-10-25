---
title: Nestitaj tabeloj
---

{% include menu.html %}

Tabelo povas enhavi ajnajn aliajn datumojn. Ĝi eĉ povas enhavi aliajn tabelojn. Tiuj estas nestitaj tabeloj. Uzu kvadratajn krampojn por montri, kie ĉiu nestita tabelo komenciĝas kaj finiĝas:

```raku
my @table = 
    [1, 2, 3, 4],
    [10, 20, 30, 40],
    [100, 200, 300, 400];
```

Vi ankaŭ povas aldoni unu plian paron de krampoj. Ili iras ĉirkaŭ la ekstera, supra-nivela tabelo. La sekva ekzemplo havas la saman datumstrukturon kiel antaŭe.

```raku
my @table = [
    [1, 2, 3, 4],
    [10, 20, 30, 40],
    [100, 200, 300, 400]
];
```

Por preni internan eron, aldonu pliajn indeksojn. Aldonu tiom, kiom vi bezonas. Per ĉiu paro de kvadrataj krampoj, vi iras unu nivelon pli profunden:

```raku
say @table[0][3]; # Presas 4
say @table[2][1]; # Presas 200 
```

{% include nav.html %}
