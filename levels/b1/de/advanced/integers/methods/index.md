---
title: Ganzzahl-Methoden
---

{% include menu.html %}

Ganze Zahlen haben viele nützliche Methoden und Routinen. Hier sind einige, die du oft brauchen wirst.

Die Methode `is-prime` prüft, ob eine Zahl eine Primzahl ist:

```raku
say 17.is-prime; # True
say 18.is-prime; # False
```

Der Operator `gcd` liefert den größten gemeinsamen Teiler von zwei Zahlen. Der Operator `lcm` liefert ihr kleinstes gemeinsames Vielfaches:

```raku
say 12 gcd 18; # 6
say 4 lcm 6;   # 12
```

Die Methode `abs` gibt den Absolutwert einer Zahl zurück. Die Methode `sign` gibt `-1`, `0` oder `1` zurück. Das hängt davon ab, ob die Zahl negativ, null oder positiv ist:

```raku
say (-5).abs;  # 5
say (-5).sign; # -1
say 0.sign;    # 0
```

{% include nav.html %}
