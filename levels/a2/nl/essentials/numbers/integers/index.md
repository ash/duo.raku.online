---
title: Gehele getallen
---

{% include menu.html %}

Gehele getallen zijn getallen zonder komma. In Raku is het gegevenstype `Int` voor gehele getallen. Een geheel getal kan positief of negatief zijn. Je kunt ook een `+` teken voor een getal schrijven als je wilt. Hier zijn een paar eenvoudige voorbeelden:

```raku
42
-42
100
-5
0
```

Ja, een gewone `0` is standaard ook een geheel getal.

## Groepen van cijfers

Raku heeft een leuke functie voor grote getallen. Je kunt de cijfers in groepen van duizend verdelen. Zo kun je de getallen makkelijker lezen:

```raku
1_000_000
-3_141_592
```

Je kunt ook een getal als `34_56` schrijven. Het is beter om dat niet te doen. Het kan andere mensen die je code lezen in de war brengen. Maar je kunt geen twee underscores naast elkaar zetten. En een getal kan niet beginnen of eindigen met een underscore.

## Gehele getallen van elke lengte

Raku werkt perfect met heel grote getallen. Ze kunnen groter zijn dan de 32-bits of 64-bits grens. Het programma hieronder is bijvoorbeeld goed. Het vermenigvuldigt twee grote gehele getallen en drukt het juiste resultaat af.

```raku
say 1_234_456_789_012_345_678_901 * 987_654_321_098_765_432_100;
```

{% include nav.html %}
