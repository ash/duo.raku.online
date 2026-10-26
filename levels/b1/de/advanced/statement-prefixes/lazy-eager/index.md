---
title: Laziness und Eagerness
---

{% include menu.html %}

Manche Listen in Raku werden erst berechnet, wenn ihre Elemente gebraucht werden. Solche Listen sind _lazy_. Mit den Präfixen `lazy` und `eager` kannst du das direkt steuern.

Das `eager`-Präfix lässt Raku eine Liste **auf einmal** und sofort erzeugen:

```raku
my @squares = eager (1..3).map(* ** 2);
say @squares; # [1 4 9]
```

Ohne `eager` würde das `map` die Werte trotzdem erzeugen. Aber `eager` sorgt dafür, dass sie alle sofort berechnet werden, nicht erst später bei Bedarf.

Das `lazy`-Präfix macht das Gegenteil. Es markiert eine Liste als lazy. Dann werden ihre Elemente erst erzeugt, wenn der Code danach fragt. Dadurch kann eine Liste unendlich sein, zumindest in der Theorie:

```raku
my $numbers = lazy (1 .. Inf);
say $numbers.is-lazy; # True
```

Die Methode `.is-lazy` bestätigt das. Die Liste versucht nicht, alle ihre endlosen Elemente im Voraus zu berechnen.

In diesem Beispiel würde Raku die Liste aber sowieso lazy machen. Ein Bereich ohne Ende, wie `1 .. Inf`, ist schon lazy. Also gibt `say (1 .. Inf).is-lazy` auch ohne das Präfix `True` aus. Wenn du hier `lazy` schreibst, ändert das nichts. Es zeigt nur deine Absicht deutlich. Das Präfix ist wirklich nützlich für eine Liste, die Raku sonst eager berechnen würde. Mit `lazy` kannst du so eine Liste lazy machen.

Meistens trifft Raku von selbst eine gute Wahl. Bereiche und Sequenzen sind lazy, und eine normale Zuweisung an ein Array ist eager. Nutze diese Präfixe, wenn du diese Wahl ändern musst. Nutze `eager`, damit eine teure Berechnung jetzt passiert. Nutze `lazy`, um eine Berechnung aufzuschieben, die groß sein oder kein Ende haben könnte.

{% include nav.html %}
