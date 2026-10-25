---
title: Comentarios de una línea
---

{% include menu.html %}

El comentario más simple es el comentario de una sola línea. Empieza con el carácter `#`. Llega hasta el final de la línea.

```raku
my $name; # Esta variable se usa para guardar el nombre del usuario
$name = prompt '¿Cuál es tu nombre? ';
say $name; # Ahora vemos el nombre
```

Un shebang es una primera línea como `#!/usr/bin/env raku`. Para Raku, también es un comentario. Pero el shell puede leerlo y ejecutarlo.

{% include nav.html %}
