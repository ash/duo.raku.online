---
title: Uitsluiting van eindpunten
---

{% include menu.html %}

Je kunt één uiteinde van een bereik uitsluiten, of beide uiteinden. Voeg daarvoor het teken `^` toe aan de bereikoperator. Zo kun je nog drie operators maken. De opmerkingen tonen de getallen die elk bereik maakt.

```raku
1 ..^ 5;  # 1, 2, 3, 4
1 ^.. 5;  #    2, 3, 4, 5
1 ^..^ 5; #    2, 3, 4
```

In eenvoudige gevallen zoals deze kun je de spaties rond de operator weglaten:

```raku
my $r1 = 1..5;
my $r2 = 1..^5;
```

Voor een bereik dat met 0 begint, zoals `0..^5`, is er een korte vorm: `^5`.

{% include nav.html %}
