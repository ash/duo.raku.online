---
title: Paquetes y módulos
translations_gpt:
---

{% include menu.html %}

La palabra clave `package` crea un espacio de nombres. Todo lo que se declara dentro de él con `our` pasa a formar parte de ese espacio de nombres. Desde fuera, puedes acceder a estos nombres a través del nombre del paquete y el separador `::`:

```raku
package Maths {
    our $pi = 3.14;
    our sub double($x) { $x * 2 }
}

say $Maths::pi;         # 3.14
say Maths::double(5);   # 10
```

Accedes a la variable como `$Maths::pi`. Tiene el sigilo, luego el nombre del paquete y después el nombre de la variable. Una subrutina se llama como `Maths::double(...)`.

Tanto `package` como `module` crean un espacio de nombres, pero se diferencian en lo demás que hacen. Un `module` es la opción habitual para código reutilizable. Un `package` simple es solo el espacio de nombres, sin nada extra. Una `class`, que conocerás en [la siguiente parte](/es/oop), también crea un espacio de nombres. Además, añade todo lo que necesitas para la programación orientada a objetos.

```raku
module Greet {
    our sub hello { 'hi' }
}

say Greet::hello; # hi
```

Así que `module` te da el mismo espacio de nombres que da un `package` simple. Cuál elegir depende sobre todo de lo que quieres hacer. Usa `module` para bibliotecas y `package` para un espacio de nombres simple. Más adelante, cuando llegues a los objetos, usa `class` para tipos.

{% include nav.html %}
