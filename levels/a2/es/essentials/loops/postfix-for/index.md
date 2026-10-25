---
title: Forma posfija de `for`
---

{% include menu.html %}

Ya conoces otros modificadores de declaración: [`if` y `else`](/es/essentials/conditional-checks/modifiers) y [`while` y `until`](/es/essentials/loops/modifiers). Esta es una buena noticia, porque Raku tiene un diseño muy consistente.

Cuando el cuerpo del bucle es corto, puedes escribir `for` después de él:

```raku
.say for 1..7;
```

Los rangos se ven muy naturales con esta forma de `for`.

Este programa hace lo mismo que un bucle más habitual:

```raku
for 1..7 -> $n {
    say $n;
}
```

O, con la variable de bucle predeterminada, hace lo mismo que esto:

```raku
for 1..7 {
    .say;
}
```

Aquí, `.say` es una forma corta de escribir `$_.say`.

{% include nav.html %}
