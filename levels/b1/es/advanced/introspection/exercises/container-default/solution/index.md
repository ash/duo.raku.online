---
title: 'Solution: El valor predeterminado del contenedor'
---

{% include menu.html %}

Aquí tienes una posible solución.

## Código

```raku
my $count is default(0);

say $count;
say $count.VAR.default;
```

🦋 Encuentra el código fuente en el archivo [container-default.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/introspection/container-default.raku).

## Salida

```
0
0
```

## Comentarios

1. El trait `is default(0)` da al contenedor un valor por defecto. Todavía no se ha asignado nada, así que leer `$count` devuelve este valor por defecto. Por eso la primera línea imprime `0`.

1. `.VAR.default` pide al contenedor mismo el valor por defecto que se le dio, que también es `0`. Sin el trait, el valor por defecto de un contenedor sin tipo sería `(Any)`.

{% include nav.html %}
