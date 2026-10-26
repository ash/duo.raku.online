---
title: Sequenzen
---

{% include menu.html %}

Eine _Sequenz_ ist eine geordnete Reihe von Werten, die nacheinander erzeugt werden. Raku baut Sequenzen mit dem Operator `...`. Er findet das Muster in den Werten, die du ihm gibst. Dann erzeugt er den Rest, bis zu einem Endpunkt.

Die einfachste Sequenz zählt einfach von einem Wert zu einem anderen:

```raku
say 1 ... 5; # (1 2 3 4 5)
```

Wenn du zwei Startwerte angibst, findet Raku den Schritt zwischen ihnen. Dann macht Raku mit dem gleichen Schritt weiter. So erstellst du eine arithmetische Sequenz:

```raku
say 1, 3 ... 11; # (1 3 5 7 9 11)
```

Hier machen die Startwerte `1, 3` den Schritt zwei. Also zählt Raku in Zweierschritten hoch und stoppt, wenn `11` erreicht ist.

Der Wert, den `...` erzeugt, hat den Typ `Seq`:

```raku
say (1 ... 5).WHAT; # (Seq)
```

Die nächsten Themen zeigen weitere Muster, die der Operator `...` erkennen kann. Sie zeigen auch, wie eine Sequenz lazy und sogar unendlich sein kann.

{% include nav.html %}
