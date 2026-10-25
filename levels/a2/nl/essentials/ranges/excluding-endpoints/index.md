---
title: Uitsluiting van eindpunten
---

{% include menu.html %}

Je kunt één uiteinde van het bereik weglaten, of beide uiteinden. Voeg daarvoor het teken `^` toe aan de bereikoperator. Zo krijg je nog drie operators. De opmerkingen laten de getallen zien die elk bereik geeft.

```raku
1 ..^ 5;  # 1, 2, 3, 4
1 ^.. 5;  #    2, 3, 4, 5
1 ^..^ 5; #    2, 3, 4
```

De gevallen hierboven zijn eenvoudig. In zulke gevallen kun je de spaties rond de bereikoperator weglaten:

```raku
my $r1 = 1..5;
my $r2 = 1..^5;
```

Sommige bereiken beginnen met 0, bijvoorbeeld `0..^5`. Er is een korte manier om zo'n bereik te schrijven: `^5`.

{% include nav.html %}
