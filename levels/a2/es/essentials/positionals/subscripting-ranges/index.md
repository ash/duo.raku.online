---
title: Subíndice de rangos
---

{% include menu.html %}

Un `Range` es un tipo de dato posicional. Como en un arreglo, puedes obtener cualquiera de sus elementos.

Un rango crea una secuencia de elementos. Por ejemplo, así imprimes el cuarto elemento:

```raku
my $r = 10..20;
say $r[3]; # 13
```

Fíjate en una diferencia importante con los arreglos. Un rango no siempre guarda todos sus valores en memoria.

## Tamaño

Para obtener el tamaño de un rango, usa el método `elems`. Funciona igual que con los arreglos.

```raku
my $r = 10..20;
say $r.elems; # 11
```

{% include nav.html %}
