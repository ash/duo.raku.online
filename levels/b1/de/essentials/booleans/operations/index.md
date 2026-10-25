---
title: Boolesche Operationen
---

{% include menu.html %}

Sie können alle Standardoperationen mit Booleschen Werten verwenden. Das sind Boolesches UND, ODER und exklusives ODER (auch XOR genannt):

```raku
say False && True; # UND
say False || True; # ODER
say False ^^ True; # XOR
```

Das Programm gibt diese Ergebnisse aus:

    False
    True
    True

## Negation

Die Verneinung macht aus einem Booleschen Wert sein Gegenteil. Um einen Wert zu verneinen, verwenden Sie den Präfixoperator `!`:

```raku
say !False; # True
```

Sie können Boolesche Werte in skalaren Variablen speichern:

```raku
my $did = True;
my $didn't = !$did;
```

{% include nav.html %}
