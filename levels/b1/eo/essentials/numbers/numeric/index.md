---
title: Flosantaj nombroj
---

{% include menu.html %}

En la antaŭa sekcio, ni vidis, ke nombroj kiel `1.5` estas [raciaj nombroj](/eo/essentials/numbers/rats). Por ricevi nombron kiel `double` en C++, uzu sciencan notacion:

```raku
1E0
314e-2
-5e-20
5.424E40
7.6e+15
```

En ĉi tiu kazo, Raku kreas objektojn de la datumtipo `Num`. Interne, ĝi konservas ilin kiel IEEE-nombrojn.

## Enkonstruitaj konstantoj

Sube estas kelkaj konstantoj, kiujn vi povas uzi tuj. Ili estas nombroj de la tipo `Num`. Vi povas skribi ĉiun el ili per ASCII aŭ per Unikodo:

`pi` | `π` | 3.141592653589793
`tau` | `τ` | egala al `2 * π`
`e` | `𝑒` | 2.718281828459045

{% include nav.html %}
