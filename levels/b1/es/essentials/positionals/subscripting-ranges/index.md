---
title: Subíndice de rangos
---

{% include menu.html %}

Un `Range` es un tipo de dato posicional. Igual que con los arreglos, puedes obtener cualquiera de sus elementos.

Por ejemplo, así es como se imprime el cuarto elemento que genera el rango:

```raku
my $r = 10..20;
say $r[3]; # 13
```

Hay una diferencia importante. A diferencia de los arreglos, los rangos no siempre guardan todos sus valores en memoria.

## Tamaño

Para obtener el tamaño de un rango, usa el método `elems`, igual que con los arreglos.

```raku
my $r = 10..20;
say $r.elems; # 11
```

{% include nav.html %}
