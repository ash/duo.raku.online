---
title: Números de punto flotante
---

{% include menu.html %}

En la sección anterior, vimos que números como `1.5` son [números racionales](/es/essentials/numbers/rats). Para obtener un número como un `double` en C++, usa la notación científica:

```raku
1E0
314e-2
-5e-20
5.424E40
7.6e+15
```

En este caso, Raku crea objetos del tipo de dato `Num`. Por dentro, los guarda como números IEEE.

## Constantes integradas

Abajo hay algunas constantes que puedes usar directamente. Son números del tipo `Num`. Puedes escribir cada una de ellas en ASCII o en Unicode:

`pi` | `π` | 3.141592653589793
`tau` | `τ` | igual a `2 * π`
`e` | `𝑒` | 2.718281828459045

{% include nav.html %}
