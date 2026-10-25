---
title: Quiz — Verschachtelte Arrays
---

{% include menu.html %}

Ein Array von Arrays enthält Temperaturen. Die Werte sind von vier Tagen. Für jeden Tag gibt es drei Messungen:

```raku
my @data =
    [1.2, 2.3, 3.4],
    [4.5, 5.6, 6.7],
    [5.6, 6.7, 7.8],
    [6.7, 7.8, 8.9];
```

## Einzelne Elemente

Was gibt jede dieser Codezeilen aus?

{:.quiz-code}
5.6 | say @data[1][1]; # ␣␣␣
1.2 | say @data[0][0]; # ␣␣␣
7.8 | say @data[2][2]; # ␣␣␣

## Vergleichen

Jeder Vergleich hat ein boolesches Ergebnis, `True` oder `False`. Wählen Sie das richtige Ergebnis.

{:.quiz-select}
False | `@data[0][0] == @data[2][2]` ist&nbsp; (: False, True :)
True | `@data[1][1] == @data[2][0]` ist&nbsp; (: False, True :)

## Längen

Hier sind einige Aufrufe der Methode `elems`. Welchen Wert gibt jeder Aufruf zurück?

{:.quiz-select}
4 | `@data.elems` —&nbsp; (: 1, 2, 3, 4, 5 :)
3 | `@data[0].elems` —&nbsp; (: 1, 2, 3, 4, 5 :)
3 | `@data[1].elems` —&nbsp; (: 1, 2, 3, 4, 5 :) 
3 | `@data[2].elems` —&nbsp; (: 1, 2, 3, 4, 5 :)

{% include quiz.html %}

{% include nav.html %}
