---
title: Números de punto flotante
---

{% include menu.html %}

La sección anterior muestra que números como `1.5` son [números racionales](/es/essentials/numbers/rats). C++ tiene números `double`. En Raku, también puedes crear un número así. Usa la notación científica, con la letra `e` o `E`:

```raku
1E0
314e-2
-5e-20
5.424E40
7.6e+15
```

Aquí, Raku crea valores del tipo de dato `Num`. Por dentro, Raku los guarda como números IEEE.

## Constantes integradas

Abajo hay algunas constantes. Puedes usarlas directamente. Son números del tipo `Num`. Puedes escribir cada una en ASCII o en Unicode:

`pi` | `π` | 3.141592653589793
`tau` | `τ` | lo mismo que `2 * π`
`e` | `𝑒` | 2.718281828459045

{% include nav.html %}
