---
title: Espacios de nombres y our
translations_gpt:
---

{% include menu.html %}

La palabra `our` hace visible algo en su espacio de nombres. Una variable con `my` es léxica. Es privada para su bloque. Una variable con `our` también es una variable de paquete. Puedes llegar a ella desde fuera por la ruta `::`:

```raku
module Counter {
    our $count = 0;  # package variable
    my  $secret = 42; # lexical, not visible outside
}

say $Counter::count; # 0
```

`$Counter::count` funciona. La variable `count` tiene `our`. Pero `$Counter::secret` falla. La variable `secret` es léxica.

Los espacios de nombres pueden **anidarse**. Esto significa que un espacio de nombres está dentro de otro. Un paquete dentro de un paquete crea una ruta `::` más larga:

```raku
module Outer {
    module Inner {
        our $val = 42;
    }
}

say $Outer::Inner::val; # 42
```

El nombre completo `$Outer::Inner::val` es como un camino. Va del espacio de nombres externo al interno. Luego llega a la variable. La biblioteca estándar usa justo esta estructura. Nombres como `IO::Socket::INET` son espacios de nombres anidados. Tus propios módulos también pueden funcionar así. Guardan todas sus partes bajo un nombre de nivel superior.

{% include nav.html %}
