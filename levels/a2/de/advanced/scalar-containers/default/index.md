---
title: Standardwerte
---

{% include menu.html %}

Manchmal erstellst du eine skalare Variable. Aber du weist ihr noch keinen Wert zu. Der Container hat trotzdem einen Wert. Das ist sein Standardwert. Der Standardwert hängt vom Typ der Variable ab.

Dieses Programm verwendet Raku nicht auf die beste Art. Aber es zeigt die Idee:

```raku
my $int;
say $int + 5;
```

Die Ausgabe enthält `5`. Vielleicht hast du das erwartet. Vielleicht hast du gedacht: Der Standardwert von `$int` ist `0`. Aber das Programm gibt auch eine Warnung aus:

```
Use of uninitialized value $int of type Any in numeric context
  in block <unit> at t.raku line 2
5
```

Diesen Zweifel kannst du auf zwei Wegen loswerden. Du kannst direkt einen Wert zuweisen:

```raku
my $int = 0;
say $int + 5; # 5
```

Oder du gibst mit dem Trait `is default` einen Standardwert an:

```raku
my $int is default(0);
say $int + 5; # 5
```

Der Standardwert muss nicht Null sein. Es kann jeder Wert sein, den du für gut hältst. Zum Beispiel:

```raku
my $int is default(1);
say $int + 5; # 6
```

{% include nav.html %}
