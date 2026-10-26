---
title: Een dubbele-punt-map
---

{% include menu.html %}

## Opgave

Hier is een expressie. Die verdubbelt de getallen van `1` tot `10`. Dan houdt ze alleen de getallen groter dan `10` over:

```raku
(1..10).map(* * 2).grep(* > 10).say;
```

Verander de code. De aanroep van de methode `grep` moet de dubbele-puntvorm gebruiken, geen haakjes. Verander de rest van de keten niet. Onthoud: de dubbele-puntvorm neemt de rest van de instructie. Dus kan alleen de laatste aanroep in een keten hem gebruiken.

## Voorbeeld

Het programma drukt af:

```
(12 14 16 18 20)
```

## Oplossing

✅ [Bekijk de oplossing](solution)

{% include nav.html %}
