---
title: Variables globales
---

{% include menu.html %}

Ahora creamos una variable antes del bloque de código:

```raku
my $x = 1;

{
    $x = 42;
    say $x;
}

say $x;
```

Aquí, `$x` es una variable global. Está en el ámbito global. Todo el programa puede usarla. El programa imprime `42` dos veces.

{% include nav.html %}
