---
title: Numeri a virgola mobile
---

{% include menu.html %}

Nella sezione precedente, abbiamo visto che i numeri come `1.5` sono [numeri razionali](/it/essentials/numbers/rats). Per avere un numero come un `double` in C++, usa la notazione scientifica:

```raku
1E0
314e-2
-5e-20
5.424E40
7.6e+15
```

In questo caso, Raku crea oggetti del tipo di dato `Num`. Internamente, li memorizza come numeri IEEE.

## Costanti integrate

Qui sotto ci sono alcune costanti che puoi usare subito. Sono numeri del tipo `Num`. Puoi scrivere ognuna di loro in ASCII o in Unicode:

`pi` | `π` | 3.141592653589793
`tau` | `τ` | uguale a `2 * π`
`e` | `𝑒` | 2.718281828459045

{% include nav.html %}
