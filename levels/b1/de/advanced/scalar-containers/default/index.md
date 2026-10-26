---
title: Standardwerte
---

{% include menu.html %}

Manchmal erstellst du eine neue skalare Variable, ohne ihr sofort etwas zuzuweisen. Auch dann enthält der Container einen Wert, seinen Standardwert. Der genaue Standardwert hängt vom Typ der Variable ab.

Das nächste Programm ist nicht die beste Art, Raku zu verwenden. Aber es zeigt die Idee:

```raku
my $int;
say $int + 5;
```

Die Ausgabe enthält `5`. Das hast du vielleicht erwartet, wenn du dachtest, dass der Standardwert von `$int` `0` ist. Aber das Programm gibt auch eine Warnung aus:

```
Use of uninitialized value $int of type Any in numeric context
  in block <unit> at t.raku line 2
5
```

Damit klar ist, welchen Wert die Variable hat, kannst du ihn entweder selbst zuweisen:

```raku
my $int = 0;
say $int + 5; # 5
```

Oder du legst mit dem Trait `is default` einen Standardwert fest:

```raku
my $int is default(0);
say $int + 5; # 5
```

Der Standardwert muss nicht Null sein. Es kann jeder Wert sein, den du für eine gute Wahl hältst, zum Beispiel:

```raku
my $int is default(1);
say $int + 5; # 6
```

{% include nav.html %}
