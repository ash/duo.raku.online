---
title: 'Solution: Un nombre anidado'
translations_gpt:
---

{% include menu.html %}

Aquí tienes una posible solución.

## Código

```raku
module Outer {
    module Inner {
        our $base = 10;
        our sub doubled { $base * 2 }
    }
}

say $Outer::Inner::base;
say Outer::Inner::doubled();
```

🦋 Puedes encontrar el código fuente en el archivo [nested-name.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/packages/nested-name.raku).

## Salida

```
10
20
```

## Comentarios

1. Cuando pones un espacio de nombres dentro de otro, obtienes una ruta `::` más larga. Tanto la variable como la subrutina están a dos niveles de profundidad, en `Outer::Inner`.

1. El nombre completo `$Outer::Inner::base` accede a la variable. `Outer::Inner::doubled()` accede a la subrutina a través de los mismos dos niveles. El nombre de una sub no tiene sigilo. Así que, a diferencia de la variable, no tiene un `$` delante.

1. Los dos miembros se declaran con `our`. Eso es lo que los hace visibles fuera de su módulo. Con `my`, quedarían privados dentro de `Inner`.

{% include nav.html %}
