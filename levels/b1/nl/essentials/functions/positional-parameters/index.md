---
title: Positionele parameters
---

{% include menu.html %}

De volgorde van functieparameters doet ertoe. Laten we bijvoorbeeld een functie maken die het verschil tussen twee getallen berekent:

```raku
sub diff($a, $b) { $a - $b }
```

Het is duidelijk dat de aanroep `diff(10, 20)` een ander resultaat geeft dan `diff(20, 10)`.

Parameters in een lijst met komma's, zoals in de functie hierboven, heten _positioneel_. Hun betekenis hangt af van de volgorde van de argumenten als je de functie aanroept.

{% include nav.html %}
