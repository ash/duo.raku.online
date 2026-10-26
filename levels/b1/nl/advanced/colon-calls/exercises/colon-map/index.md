---
title: Een dubbele-punt-map
---

{% include menu.html %}

## Opgave

Deze expressie verdubbelt de getallen van `1` tot `10`. Daarna houdt ze alleen de getallen over die groter zijn dan `10`:

```raku
(1..10).map(* * 2).grep(* > 10).say;
```

Herschrijf de code zodat de aanroep van `grep` de dubbele-puntvorm gebruikt, geen haakjes. Verander de rest van de keten niet. Onthoud dat de dubbele-puntvorm de hele rest van de instructie neemt. Dus kan alleen de laatste aanroep in een keten hem gebruiken.

## Voorbeeld

Het programma drukt af:

```
(12 14 16 18 20)
```

## Oplossing

✅ [Bekijk de oplossing](solution)

{% include nav.html %}
