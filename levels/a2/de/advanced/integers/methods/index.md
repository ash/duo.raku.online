---
title: Ganzzahl-Methoden
---

{% include menu.html %}

Ganze Zahlen haben viele nützliche Methoden und Routinen. Hier sind ein paar davon. Du wirst sie oft benutzen.

Die Methode `is-prime` sagt dir, ob eine Zahl eine Primzahl ist:

```raku
say 17.is-prime; # True
say 18.is-prime; # False
```

Die Operatoren `gcd` und `lcm` arbeiten mit zwei Zahlen. `gcd` liefert den größten gemeinsamen Teiler. Das ist die größte Zahl, die beide Zahlen teilt. `lcm` liefert das kleinste gemeinsame Vielfache. Das ist die kleinste Zahl, die du durch beide Zahlen teilen kannst:

```raku
say 12 gcd 18; # 6
say 4 lcm 6;   # 12
```

Die Methode `abs` liefert den Absolutwert. Das ist die Zahl ohne ihr Minuszeichen. Die Methode `sign` liefert `-1`, `0` oder `1`. Für eine negative Zahl ist das Ergebnis `-1`. Für die Null ist es `0`. Für eine positive Zahl ist es `1`:

```raku
say (-5).abs;  # 5
say (-5).sign; # -1
say 0.sign;    # 0
```

{% include nav.html %}
