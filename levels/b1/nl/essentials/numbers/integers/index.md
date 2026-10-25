---
title: Gehele getallen
---

{% include menu.html %}

Het gegevenstype `Int` is voor gehele getallen, dat wil zeggen getallen zonder komma. Ze kunnen positief of negatief zijn. Je kunt een `+` teken toevoegen als je wilt. Hier zijn een paar voor de hand liggende voorbeelden:

```raku
42
-42
100
-5
0
```

Ja, Raku ziet een gewone `0` standaard als een geheel getal.

## Groepen van cijfers

Raku heeft een leuke functie die je helpt om grote getallen te schrijven. Je kunt de cijfers in groepen van duizend verdelen, zodat ze makkelijker te lezen zijn:

```raku
1_000_000
-3_141_592
```

Je kunt een getal zoals `34_56` maken, maar dat kun je beter niet doen. Andere mensen die je code lezen, vinden het misschien verwarrend. Maar je kunt geen twee underscores naast elkaar zetten. Ook kan een getal niet beginnen of eindigen met een underscore.

## Gehele getallen van elke lengte

Raku heeft geen moeite met getallen boven de 32-bits of 64-bits grens. Het volgende programma is bijvoorbeeld correct. Het vermenigvuldigt twee grote gehele getallen en drukt het juiste resultaat af.

```raku
say 1_234_456_789_012_345_678_901 * 987_654_321_098_765_432_100;
```

{% include nav.html %}
