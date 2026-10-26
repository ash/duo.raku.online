---
title: Conjuntos, bolsas y mezclas
---

{% include menu.html %}

Raku tiene arrays y hashes. También tiene algunos contenedores especiales para grupos de valores. El más simple es el `Set`. Sus valores son _distintos_, así que cada valor es diferente de los otros. Los valores de un set no tienen orden. Un valor está en el set, o no está. Si un valor aparece dos veces, el set ignora el segundo.

Para crear un set, usa la rutina `set`. Los valores que se repiten se convierten en un solo valor:

```raku
my $s = set(1, 2, 3, 2, 1);
say $s.elems; # 3
```

Le damos cinco números al set. Pero solo tiene tres elementos. Es porque `1` y `2` aparecen más de una vez.

Normalmente le haces a un set una pregunta principal. ¿Está un valor en el set? El operador `∈` la responde. Lees `∈` como "es un elemento de". Devuelve un Booleano, `True` o `False`:

```raku
say 2 ∈ set(1, 2, 3); # True
say 9 ∈ set(1, 2, 3); # False
```

Quizás quieres usar solo caracteres ASCII simples. Entonces escribe el mismo operador como `(elem)`:

```raku
say 2 (elem) set(1, 2, 3); # True
```

Los siguientes temas muestran cómo combinar sets. También muestran los bags y los mixes. Los bags y los mixes son parientes cercanos de los sets.

{% include nav.html %}
