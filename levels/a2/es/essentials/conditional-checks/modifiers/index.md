---
title: '`if` y `unless` como modificadores de sentencia'
---

{% include menu.html %}

A veces una declaración simple depende de una condición. Raku tiene una forma muy fácil de escribir esto. No necesitas un bloque de código aparte. Solo pon `if` o `unless` justo después de la declaración. En Raku, estas formas se llaman _modificadores de declaración_.

```raku
say 'Buenas tardes' if $hours > 12;

say 'Todos los sistemas funcionan' unless $broken;
```

{% include nav.html %}
