---
title: Operaciones de conjuntos
---

{% include menu.html %}

Puedes combinar sets con las operaciones habituales de la teoría de conjuntos. Cada operador tiene un símbolo Unicode y una forma ASCII. Puedes usar cualquiera de las dos.

La _unión_ `∪`, o `(|)`, reúne todos los valores de los dos sets:

```raku
say (set(1, 2, 3) ∪ set(3, 4, 5)).elems; # 5
```

Como los dos sets contienen `3`, la unión tiene cinco elementos distintos: `1, 2, 3, 4, 5`.

La _intersección_ `∩`, o `(&)`, conserva solo los valores que tienen los dos sets:

```raku
my $common = set(1, 2, 3) ∩ set(2, 3, 4);
say $common;       # Set(2 3) — note that sets are unordered
say $common.elems; # 2
say 2 ∈ $common;   # True
```

Aquí, la intersección tiene `2` y `3`, los valores que están en los dos sets. Un set no tiene un orden propio. Así que, al imprimirlo, los dos elementos pueden salir en cualquier orden.

El resultado de estas operaciones también es un set. Así que puedes hacerle las mismas preguntas. ¿Cuántos elementos tiene, y está en él un valor concreto?

{% include nav.html %}
