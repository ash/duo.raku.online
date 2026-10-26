---
title: 'Solution: Un nombre anidado'
translations_gpt:
---

{% include menu.html %}

Aquí tienes una forma de resolver la tarea.

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

1. Aquí, un espacio de nombres está dentro de otro. Esto crea una ruta `::` más larga. La variable y la subrutina están a dos niveles de profundidad, en `Outer::Inner`.

1. El nombre completo `$Outer::Inner::base` llega a la variable. `Outer::Inner::doubled()` llega a la subrutina, por los mismos dos niveles. El nombre de una sub no tiene sigilo. Así que no tiene un `$` delante, pero la variable sí lo tiene.

1. Los dos tienen `our` delante. Esto los hace visibles fuera de su módulo. Con `my`, quedarían privados dentro de `Inner`.

{% include nav.html %}
