---
title: Ganze Zahlen
---

{% include menu.html %}

Der Datentyp `Int` ist für Ganzzahlen da, also für ganze Zahlen. Diese Zahlen können positiv oder negativ sein. Du kannst ein `+`-Zeichen hinzufügen, wenn du möchtest. Hier sind ein paar offensichtliche Beispiele:

```raku
42
-42
100
-5
0
```

Ja, standardmäßig behandelt Raku eine einfache `0` als Ganzzahl.

## Gruppen von Ziffern

Raku hat eine nette Funktion, die dir hilft, große Zahlen zu schreiben. Du kannst die Ziffern in Tausendergruppen teilen, damit man sie leichter lesen kann:

```raku
1_000_000
-3_141_592
```

Du kannst eine Zahl wie `34_56` bilden, aber das lässt du besser. Andere Leute, die deinen Code lesen, finden das vielleicht verwirrend. Aber du kannst nicht zwei Unterstriche nebeneinander setzen. Außerdem kann eine Zahl nicht mit einem Unterstrich beginnen oder enden.

## Ganze Zahlen jeder Länge

Raku hat kein Problem mit Zahlen, die über die Grenzen von 32 Bit oder 64 Bit hinausgehen. Das folgende Programm ist zum Beispiel korrekt. Es multipliziert zwei große ganze Zahlen und gibt das richtige Ergebnis aus.

```raku
say 1_234_456_789_012_345_678_901 * 987_654_321_098_765_432_100;
```

{% include nav.html %}
