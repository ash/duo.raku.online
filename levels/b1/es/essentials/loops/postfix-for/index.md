---
title: Forma posfija de `for`
---

{% include menu.html %}

Ya hemos visto otros modificadores de declaración: [`if` y `else`](/es/essentials/conditional-checks/modifiers) y [`while` y `until`](/es/essentials/loops/modifiers). Es un motivo para celebrar un poco, porque el diseño de Raku es muy consistente.

Cuando el cuerpo del bucle es corto, puedes escribir el bucle `for` en forma postfija:

```raku
.say for 1..7;
```

Como puedes ver, los rangos se ven muy naturales con la forma postfija de `for`.

Este programa es lo mismo que una versión más tradicional:

```raku
for 1..7 -> $n {
    say $n;
}
```

O, si usas la variable de bucle predeterminada, es lo mismo que:

```raku
for 1..7 {
    .say;
}
```

Aquí, `.say` es la forma corta de `$_.say`.

{% include nav.html %}
