---
title: Booleana operationes
---

{% include menu.html %}

Omnes operationes standardas cum valoribus Booleanis adhibere potes. Hae sunt Boolean AND, OR, et exclusive OR (etiam XOR vocatum):

```raku
say False && True; # AND
say False || True; # OR
say False ^^ True; # XOR
```

Programma haec resultata imprimit:

    False
    True
    True

## Negatio

Negatio valorem Booleanum in contrarium vertit. Ad valorem negandum, utere operatore praefixo `!`:

```raku
say !False; # True
```

Valores Booleanos in variabilibus scalaribus conservare potes:

```raku
my $fecit = True;
my $non fecit = !$fecit;
```

{% include nav.html %}
