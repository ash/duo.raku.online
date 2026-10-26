---
title: Espacios de nombres y our
translations_gpt:
---

{% include menu.html %}

El declarador `our` es lo que hace visible un nombre en su espacio de nombres. Una variable declarada con `my` es léxica, es decir, es privada para su bloque. Una variable declarada con `our` también es una variable de paquete. Puedes acceder a ella desde fuera a través de la ruta `::`:

```raku
module Counter {
    our $count = 0;  # package variable
    my  $secret = 42; # lexical, not visible outside
}

say $Counter::count; # 0
```

`$Counter::count` funciona porque `count` se declaró con `our`. Pero `$Counter::secret` fallaría, porque `secret` es léxica.

Los espacios de nombres pueden **anidarse**, es decir, uno puede estar dentro de otro. Un paquete dentro de otro paquete da una ruta `::` más larga:

```raku
module Outer {
    module Inner {
        our $val = 42;
    }
}

say $Outer::Inner::val; # 42
```

El nombre completo `$Outer::Inner::val` lleva del espacio de nombres externo al interno. Desde ahí, lleva a la variable. Así es justo como se organiza la biblioteca estándar: nombres como `IO::Socket::INET` son espacios de nombres anidados. Tus propios módulos también agrupan así sus partes bajo un nombre de nivel superior.

{% include nav.html %}
