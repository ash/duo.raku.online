---
title: Comentarios incrustados
---

{% include menu.html %}

Los comentarios embebidos también se llaman comentarios en línea. Se parecen a los comentarios de varias líneas. Solo hay una diferencia. Los pones entre otras partes del programa. Por ejemplo:

```raku
my $name;
$name = #`[Se espera entrada del usuario aquí] prompt '¿Cuál es tu nombre? ';
say $name;
```

Un buen resaltador de sintaxis muestra el código en colores. Esto ayuda mucho a ver los comentarios.

{% include nav.html %}
