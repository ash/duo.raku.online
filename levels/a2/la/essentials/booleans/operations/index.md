---
title: Booleana operationes
---

{% include menu.html %}

Omnes operationes usitatas cum valoribus Booleanis facere potes. Sunt Boolean AND, OR, et exclusive OR. Exclusive OR etiam XOR vocatur:

```raku
say False && True; # AND
say False || True; # OR
say False ^^ True; # XOR
```

Programma hoc imprimit:

    False
    True
    True

## Negatio

Negatio valorem Booleanum contrarium dat. Ad negationem operatore praefixo `!` utere. Operator praefixus ante valorem stat:

```raku
say !False; # True
```

Variabilis scalaris valorem Booleanum tenere potest:

```raku
my $fecit = True;
my $non fecit = !$fecit;
```

{% include nav.html %}
