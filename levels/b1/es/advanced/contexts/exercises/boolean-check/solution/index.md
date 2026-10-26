---
title: 'Solution: Una verificación booleana'
---

{% include menu.html %}

Aquí tienes una posible solución.

## Código

```raku
my @empty;
say ?@empty;
```

🦋 Encuentra el código fuente en el archivo [boolean-check.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/contexts/boolean-check.raku).

## Salida

```
False
```

## Comentarios

1. El prefijo `?` fija el contexto booleano.

1. Un array vacío es falso, y justo de esto depende `if @array`.

{% include nav.html %}
