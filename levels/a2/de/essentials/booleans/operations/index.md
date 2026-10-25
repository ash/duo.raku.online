---
title: Boolesche Operationen
---

{% include menu.html %}

Sie können alle üblichen Operationen mit Booleschen Werten machen. Das sind Boolesches UND, ODER und exklusives ODER. Exklusives ODER heißt auch XOR:

```raku
say False && True; # UND
say False || True; # ODER
say False ^^ True; # XOR
```

Das Programm gibt Folgendes aus:

    False
    True
    True

## Negation

Die Verneinung ergibt den umgekehrten Booleschen Wert. Für die Verneinung verwenden Sie den Präfixoperator `!`. Ein Präfixoperator steht vor dem Wert:

```raku
say !False; # True
```

Eine skalare Variable kann einen Booleschen Wert speichern:

```raku
my $did = True;
my $didn't = !$did;
```

{% include nav.html %}
