---
title: Forma posfija de `for`
---

{% include menu.html %}

Ya conoces otros modificadores de declaración: [`if` y `else`](/es/essentials/conditional-checks/modifiers) y [`while` y `until`](/es/essentials/loops/modifiers). Esta es una buena noticia. En Raku, las cosas parecidas funcionan de forma parecida.

Un cuerpo de bucle corto puede tener `for` después:

```raku
.say for 1..7;
```

Los rangos se ven muy naturales con `for` al final.

Este programa hace lo mismo que un bucle normal:

```raku
for 1..7 -> $n {
    say $n;
}
```

O hace lo mismo que este bucle con `$_`:

```raku
for 1..7 {
    .say;
}
```

Aquí, `.say` es una forma corta de escribir `$_.say`.

{% include nav.html %}
