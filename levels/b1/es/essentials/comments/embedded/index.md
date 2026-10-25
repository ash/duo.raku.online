---
title: Comentarios incrustados
---

{% include menu.html %}

Los comentarios embebidos, o en línea, se ven igual que los comentarios de varias líneas. La única diferencia es que van entre otras partes del programa. Por ejemplo:

```raku
my $name;
$name = #`[Se espera entrada del usuario aquí] prompt '¿Cuál es tu nombre? ';
say $name;
```

Con un buen resaltador de sintaxis, es mucho más fácil ver los comentarios.

{% include nav.html %}
