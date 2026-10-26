---
title: Operaciones de conjuntos
---

{% include menu.html %}

Puedes combinar sets con las operaciones normales de la teoría de conjuntos. La teoría de conjuntos es una parte de las matemáticas. Cada operador tiene un símbolo Unicode. También tiene una forma de escribirlo en ASCII. Usa la que más te guste.

La _unión_ es `∪`, o `(|)` en ASCII. Toma todos los valores de los dos sets:

```raku
say (set(1, 2, 3) ∪ set(3, 4, 5)).elems; # 5
```

El valor `3` está en los dos sets. Así que la unión tiene cinco elementos distintos: `1, 2, 3, 4, 5`.

La _intersección_ es `∩`, o `(&)` en ASCII. Guarda solo los valores que están en los dos sets:

```raku
my $common = set(1, 2, 3) ∩ set(2, 3, 4);
say $common;       # Set(2 3) — note that sets are unordered
say $common.elems; # 2
say 2 ∈ $common;   # True
```

Aquí, la intersección tiene `2` y `3`. Estos valores están en los dos sets. Un set no tiene orden. Así que en la salida, los dos elementos pueden salir en cualquier orden.

Estas operaciones también dan un set. Así que puedes hacerle las mismas preguntas. ¿Cuántos elementos tiene? ¿Está en él un valor concreto?

{% include nav.html %}
