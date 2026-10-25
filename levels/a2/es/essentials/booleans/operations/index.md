---
title: Operaciones booleanas
---

{% include menu.html %}

Puedes hacer todas las operaciones normales con valores booleanos. Son AND, OR y OR exclusivo. El OR exclusivo también se llama XOR:

```raku
say False && True; # AND
say False || True; # OR
say False ^^ True; # XOR
```

El programa imprime esto:

    False
    True
    True

## Negación

La negación da el valor booleano contrario. Para la negación, usa el operador prefijo `!`. Un operador prefijo va antes del valor:

```raku
say !False; # True
```

Una variable escalar puede guardar un valor booleano:

```raku
my $did = True;
my $didn't = !$did;
```

{% include nav.html %}
