---
title: Bags und Mixes
---

{% include menu.html %}

Ein Set merkt sich nur, _ob_ ein Wert darin ist. Manchmal willst du auch wissen, _wie oft_ er darin ist. Dafür gibt es den `Bag`. Er hat für jeden Wert einen Zähler.

Für einen Bag benutze die Routine `bag`. Ein Bag macht aus wiederholten Werten nicht einen Wert. Er zählt sie:

```raku
my $b = bag(<a b a c a>);
say $b<a>; # 3
say $b<b>; # 1
```

Frag den Bag mit dem Subscript `< >` nach einem Wert. Du erfährst, wie oft dieser Wert in den Bag kam. Die Methode `total` addiert alle Zähler:

```raku
say bag(<a b a c a>).total; # 5
```

Ein `Mix` ist wie ein Bag. Aber in einem Mix heißen die Zähler _Gewichte_. Ein Gewicht muss keine ganze Zahl sein. Es kann auch eine Bruchzahl sein. Du kannst die Gewichte selbst angeben. Mache aus jedem Wert und seinem Gewicht ein Paar. Dann mache aus der Liste mit `.Mix` einen Mix:

```raku
my $m = (flour => 2.5, sugar => 0.75).Mix;
say $m<flour>; # 2.5
say $m.total;  # 3.25
```

Ein Gewicht bekommst du mit `< >`. Die Gewichte addierst du mit `total`. Beides funktioniert genau wie bei einem Bag. Nur müssen die Zahlen keine ganzen Zahlen sein. Hier addiert `total` die Gewichte `2.5` und `0.75`. Das Ergebnis ist `3.25`. Also gibt `total` die Summe der Gewichte. Die Methode zählt nicht die Werte. Bags und Mixes sind nützlich, wenn du Dinge zählen musst. Zum Beispiel kann ein Bag die Wörter in einem Text zählen. Er sagt dir, wie oft jedes Wort vorkommt. Ein Mix kann jeder Option ein Gewicht geben.

{% include nav.html %}
