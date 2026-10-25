---
title: Floating-point getallen
---

{% include menu.html %}

In de vorige sectie zagen we dat getallen zoals `1.5` [rationale getallen](/nl/essentials/numbers/rats) zijn. Om een getal te krijgen zoals een `double` in C++, gebruik je wetenschappelijke notatie:

```raku
1E0
314e-2
-5e-20
5.424E40
7.6e+15
```

In dit geval maakt Raku objecten van het datatype `Num`. Intern slaat het ze op als IEEE-getallen.

## Ingebouwde constanten

Hieronder staan een paar constanten die je meteen kunt gebruiken. Het zijn getallen van het type `Num`. Je kunt ze allemaal in ASCII of in Unicode schrijven:

`pi` | `π` | 3.141592653589793
`tau` | `τ` | gelijk aan `2 * π`
`e` | `𝑒` | 2.718281828459045

{% include nav.html %}
