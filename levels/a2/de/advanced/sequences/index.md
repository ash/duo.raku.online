---
title: Sequenzen
---

{% include menu.html %}

Eine _Sequenz_ ist eine Reihe von Werten in einer festen Reihenfolge. Raku macht sie nacheinander. Raku baut Sequenzen mit dem Operator `...`. Du gibst ihm ein paar Werte. Der Operator findet das Muster darin. Dann macht er den Rest der Werte, bis zu einem Endpunkt. Der Endpunkt ist der Wert, bei dem die Sequenz endet.

Im einfachsten Fall zählt die Sequenz von einem Wert zu einem anderen:

```raku
say 1 ... 5; # (1 2 3 4 5)
```

Du kannst am Anfang zwei Werte angeben. Dann findet Raku den Schritt zwischen ihnen. Raku macht mit dem gleichen Schritt weiter. So machst du eine arithmetische Sequenz:

```raku
say 1, 3 ... 11; # (1 3 5 7 9 11)
```

Hier geben die Werte `1, 3` am Anfang einen Schritt von zwei. Also zählt Raku in Schritten von zwei nach oben. Raku stoppt, wenn `11` erreicht ist.

Der Operator `...` gibt einen Wert vom Typ `Seq`:

```raku
say (1 ... 5).WHAT; # (Seq)
```

Die nächsten Themen zeigen andere Muster, die der Operator `...` kennt. Sie zeigen auch, dass eine Sequenz lazy sein kann. Sie kann sogar unendlich sein und kein Ende haben.

{% include nav.html %}
