---
title: Ganze Zahlen
---

{% include menu.html %}

Ganzzahlen sind ganze Zahlen. In Raku gibt es für Ganzzahlen den Datentyp `Int`. Eine Ganzzahl kann positiv oder negativ sein. Du kannst auch ein `+`-Zeichen vor eine Zahl schreiben, wenn du willst. Hier sind ein paar einfache Beispiele:

```raku
42
-42
100
-5
0
```

Ja, auch eine einfache `0` ist standardmäßig eine Ganzzahl.

## Gruppen von Ziffern

Raku hat eine nette Funktion für große Zahlen. Du kannst die Ziffern in Tausendergruppen teilen. So kann man die Zahlen leichter lesen:

```raku
1_000_000
-3_141_592
```

Du kannst auch eine Zahl wie `34_56` schreiben. Das machst du aber besser nicht. Das kann andere Leute verwirren, die deinen Code lesen. Aber du kannst nicht zwei Unterstriche nebeneinander setzen. Und eine Zahl kann nicht mit einem Unterstrich beginnen oder enden.

## Ganze Zahlen jeder Länge

Raku arbeitet perfekt mit sehr großen Zahlen. Die Zahlen dürfen größer als 32 Bit oder 64 Bit sein. Das Programm unten ist zum Beispiel in Ordnung. Es multipliziert zwei große ganze Zahlen und gibt das richtige Ergebnis aus.

```raku
say 1_234_456_789_012_345_678_901 * 987_654_321_098_765_432_100;
```

{% include nav.html %}
