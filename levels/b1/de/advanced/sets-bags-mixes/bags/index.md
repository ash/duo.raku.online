---
title: Bags und Mixes
---

{% include menu.html %}

Ein Set sagt dir nur, _ob_ ein Wert darin ist. Aber manchmal musst du auch wissen, _wie oft_ der Wert vorkommt. Dafür gibt es den `Bag`, der für jeden Wert einen Zähler speichert.

Du erstellst einen Bag mit der `bag`-Routine. Wiederholte Werte werden nicht zu einem Wert. Stattdessen werden sie gezählt:

```raku
my $b = bag(<a b a c a>);
say $b<a>; # 3
say $b<b>; # 1
```

Du kannst den Bag mit dem `< >`-Subscript nach einem Wert fragen. Dann erfährst du, wie oft dieser Wert hineingelegt wurde. Die Methode `total` gibt die Summe aller Zähler zurück:

```raku
say bag(<a b a c a>).total; # 5
```

Ein `Mix` ist dieselbe Idee wie ein Bag. Der Unterschied ist, dass die Zähler, die _Gewichte_ heißen, auch Bruchzahlen sein können, nicht nur ganze Zahlen. Um die Gewichte selbst anzugeben, bilde aus jedem Wert und seinem Gewicht ein Paar. Dann mache aus der Liste mit `.Mix` einen Mix:

```raku
my $m = (flour => 2.5, sugar => 0.75).Mix;
say $m<flour>; # 2.5
say $m.total;  # 3.25
```

Du schlägst ein Gewicht mit `< >` nach und addierst die Gewichte mit `total`. Beides funktioniert genau wie bei einem Bag. Der einzige Unterschied ist, dass die Zahlen keine ganzen Zahlen sein müssen. Hier addiert `total` die Gewichte `2.5` und `0.75`, und das ergibt `3.25`. Das ist die Summe der Gewichte, nicht die Anzahl der Werte. Bags und Mixes sind nützlich, wenn du dir Anzahlen merken musst. Zum Beispiel kannst du zählen, wie oft jedes Wort in einem Text vorkommt. Oder du kannst jeder Option ein Gewicht geben.

{% include nav.html %}
