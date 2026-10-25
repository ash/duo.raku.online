---
title: Positionele parameters
---

{% include menu.html %}

De volgorde van functieparameters is belangrijk. Neem bijvoorbeeld een functie. Die berekent het verschil tussen twee getallen:

```raku
sub diff($a, $b) { $a - $b }
```

Natuurlijk geven `diff(10, 20)` en `diff(20, 10)` verschillende resultaten.

In de functie hierboven zijn de parameters een lijst met komma's. Zulke parameters heten _positioneel_. In een aanroep is de volgorde van de argumenten belangrijk. De volgorde bepaalt de betekenis van elke parameter.

{% include nav.html %}
