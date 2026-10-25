---
title: Operaciones booleanas
---

{% include menu.html %}

Puedes usar todas las operaciones estándar con valores booleanos. Son AND, OR y OR exclusivo (también llamado XOR):

```raku
say False && True; # AND
say False || True; # OR
say False ^^ True; # XOR
```

El programa imprime estos resultados:

    False
    True
    True

## Negación

La negación convierte un valor booleano en su contrario. Para negar un valor, usa el operador prefijo `!`:

```raku
say !False; # True
```

Puedes guardar valores booleanos en variables escalares:

```raku
my $did = True;
my $didn't = !$did;
```

{% include nav.html %}
