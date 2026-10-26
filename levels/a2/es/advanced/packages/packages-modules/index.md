---
title: Paquetes y módulos
translations_gpt:
---

{% include menu.html %}

La palabra clave `package` crea un espacio de nombres. Dentro de él, puedes crear cosas con `our`. Pasan a ser parte del espacio de nombres. Puedes llegar a ellas desde fuera. Usa el nombre del paquete y el separador `::`:

```raku
package Maths {
    our $pi = 3.14;
    our sub double($x) { $x * 2 }
}

say $Maths::pi;         # 3.14
say Maths::double(5);   # 10
```

Obtienes la variable como `$Maths::pi`. Primero va el sigilo, luego el nombre del paquete y luego el nombre de la variable. Llamas a una subrutina como `Maths::double(...)`.

Tanto `package` como `module` crean un espacio de nombres. Pero también hacen cosas diferentes. Un `module` es la opción habitual para código que usas otra vez. Un `package` simple es solo el espacio de nombres, sin nada más. Una `class` también crea un espacio de nombres. Aprenderás sobre las clases en [la siguiente parte](/es/oop). Una clase también añade las herramientas para los objetos.

```raku
module Greet {
    our sub hello { 'hi' }
}

say Greet::hello; # hi
```

Así que `module` te da un espacio de nombres. Un `package` por sí solo te da el mismo tipo de espacio de nombres. Elige entre ellos según lo que quieres hacer. Usa `module` para bibliotecas. Usa `package` solo para un espacio de nombres. Más adelante, con objetos, usa `class` para tipos.

{% include nav.html %}
