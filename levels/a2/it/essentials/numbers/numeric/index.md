---
title: Numeri a virgola mobile
---

{% include menu.html %}

La sezione precedente mostra che i numeri come `1.5` sono [numeri razionali](/it/essentials/numbers/rats). Il C++ ha i numeri `double`. Anche in Raku puoi creare un numero così. Usa la notazione scientifica, con la lettera `e` o `E`:

```raku
1E0
314e-2
-5e-20
5.424E40
7.6e+15
```

Qui Raku crea valori del tipo di dato `Num`. Dentro, Raku li tiene come numeri IEEE.

## Costanti integrate

Qui sotto ci sono alcune costanti. Puoi usarle direttamente. Sono numeri del tipo `Num`. Puoi scrivere ognuna in ASCII o in Unicode:

`pi` | `π` | 3.141592653589793
`tau` | `τ` | uguale a `2 * π`
`e` | `𝑒` | 2.718281828459045

{% include nav.html %}
