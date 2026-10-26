---
title: 'Solution: El valor predeterminado del contenedor'
---

{% include menu.html %}

Aquí tienes una forma de resolver la tarea.

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

1. El trait `is default(0)` da al contenedor un valor por defecto. El programa no asigna nada a `$count`. Así que `$count` devuelve el valor por defecto. La primera línea imprime `0`.

1. `.VAR.default` pide al contenedor su valor por defecto. También es `0`. Sin el trait, el valor por defecto es otro. Entonces un contenedor sin tipo tiene el valor por defecto `(Any)`.

{% include nav.html %}
