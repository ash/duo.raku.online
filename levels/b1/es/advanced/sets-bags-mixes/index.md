---
title: Conjuntos, bolsas y mezclas
---

{% include menu.html %}

Además de los arrays y los hashes, Raku tiene algunos contenedores especiales para colecciones de valores. El más simple es el `Set`. Es una colección de valores _distintos_ sin ningún orden concreto. Cada valor está en el set o no está, y los valores repetidos se ignoran.

Creas un set con la rutina `set`. Si un valor se repite, el set guarda solo una copia:

```raku
my $s = set(1, 2, 3, 2, 1);
say $s.elems; # 3
```

Pasamos cinco números, pero el set tiene solo tres elementos. Esto es porque `1` y `2` aparecieron más de una vez.

La pregunta principal que le haces a un set es si un valor está en él. El operador `∈`, que lees como "es un elemento de", devuelve un Booleano:

```raku
say 2 ∈ set(1, 2, 3); # True
say 9 ∈ set(1, 2, 3); # False
```

Si quieres quedarte con ASCII simple, escribe el mismo operador como `(elem)`:

```raku
say 2 (elem) set(1, 2, 3); # True
```

A continuación, verás cómo combinar sets. También conocerás los bags y los mixes, que son parientes cercanos de los sets.

{% include nav.html %}
