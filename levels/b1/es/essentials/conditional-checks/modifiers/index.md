---
title: '`if` y `unless` como modificadores de sentencia'
---

{% include menu.html %}

A veces quieres que una declaración simple se ejecute solo si se cumple una condición. Para esto, Raku tiene una solución muy práctica. No necesitas crear un bloque de código aparte. Simplemente pon `if` o `unless` justo después de la declaración. En Raku, estas construcciones se llaman _modificadores de declaración_.

```raku
say 'Buenas tardes' if $hours > 12;

say 'Todos los sistemas funcionan' unless $broken;
```

{% include nav.html %}
