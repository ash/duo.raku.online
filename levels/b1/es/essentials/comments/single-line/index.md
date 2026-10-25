---
title: Comentarios de una línea
---

{% include menu.html %}

El tipo de comentario más simple es el comentario de una sola línea. Empieza con el carácter `#`. Continúa hasta el final de la línea actual.

```raku
my $name; # Esta variable se usa para guardar el nombre del usuario
$name = prompt '¿Cuál es tu nombre? ';
say $name; # Ahora vemos el nombre
```

Fíjate en un shebang como `#!/usr/bin/env raku` en la primera línea de código. Para Raku, también es un comentario. Pero el shell puede leerlo y ejecutarlo.

{% include nav.html %}
