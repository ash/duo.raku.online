---
title: Forma posfija de `for`
---

{% include menu.html %}

Ya has visto otros modificadores de declaración: [`if` y `else`](/es/essentials/conditional-checks/modifiers) y [`while` y `until`](/es/essentials/loops/modifiers). Es un pequeño motivo para celebrar: el diseño de Raku es muy consistente.

Con un cuerpo de bucle corto, puedes usar la forma postfija de `for`:

```raku
.say for 1..7;
```

Como puedes ver, los rangos encajan muy bien con el `for` postfijo.

Este programa hace lo mismo que una versión más habitual:

```raku
for 1..7 -> $n {
    say $n;
}
```

O, si usas la variable de bucle predeterminada, lo mismo que esto:

```raku
for 1..7 {
    .say;
}
```

Aquí, `.say` es la forma corta de `$_.say`.

{% include nav.html %}
