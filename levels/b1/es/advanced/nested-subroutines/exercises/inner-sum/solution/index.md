---
title: 'Solution: Una suma interna'
translations_gpt:
---

{% include menu.html %}

Aquí tienes una posible solución.

## Código

```raku
sub compute {
    sub add($x, $y) {
        $x + $y;
    }

    add(2, 3) + add(4, 5);
}

say compute;
```

🦋 Puedes encontrar el código fuente en el archivo [inner-sum.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/nested-subroutines/inner-sum.raku).

## Salida

```
14
```

## Comentarios

1. Dentro de `compute`, la función anidada `add` se usa dos veces: `add(2, 3)` es `5`, y `add(4, 5)` es `9`.

1. Su suma, `14`, es lo que devuelve `compute`.

{% include nav.html %}
