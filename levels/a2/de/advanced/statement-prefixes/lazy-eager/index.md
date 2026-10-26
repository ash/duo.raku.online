---
title: Laziness und Eagerness
---

{% include menu.html %}

Raku berechnet manche Listen erst, wenn es ihre Elemente braucht. Solche Listen sind _lazy_. Mit den Präfixen `lazy` und `eager` kannst du das selbst steuern.

Das `eager`-Präfix lässt Raku eine Liste **auf einmal** erzeugen, und zwar sofort:

```raku
my @squares = eager (1..3).map(* ** 2);
say @squares; # [1 4 9]
```

Das `map` erzeugt die Werte auch ohne `eager`. Aber `eager` sorgt dafür, dass Raku sie alle sofort berechnet. Raku wartet nicht, bis du sie brauchst.

Das `lazy`-Präfix macht das Gegenteil. Es markiert eine Liste als lazy. Dann erzeugt Raku jedes Element erst, wenn der Code danach fragt. So kann eine Liste theoretisch kein Ende haben:

```raku
my $numbers = lazy (1 .. Inf);
say $numbers.is-lazy; # True
```

Die Methode `.is-lazy` zeigt, dass die Liste lazy ist. Also versucht sie nicht, zuerst alle ihre Elemente zu berechnen. Und diese Elemente haben kein Ende.

Aber in diesem Beispiel macht Raku die Liste sowieso lazy. Ein Bereich ohne Ende, wie `1 .. Inf`, ist schon lazy. Also gibt `say (1 .. Inf).is-lazy` auch ohne das Präfix `True` aus. Hier ändert `lazy` nichts. Es zeigt nur klar, was du willst. Das Präfix ist in einem anderen Fall wirklich nützlich. Manchmal berechnet Raku eine Liste eager, also auf einmal. Mit dem Präfix kannst du so eine Liste lazy machen.

Meistens wählt Raku von selbst gut. Bereiche und Sequenzen sind lazy. Eine normale Zuweisung an ein Array ist eager. Nutze diese Präfixe, wenn du eine andere Wahl willst. Nutze `eager`, damit eine langsame Berechnung jetzt passiert. Nutze `lazy`, um eine sehr große oder endlose Berechnung aufzuschieben.

{% include nav.html %}
