---
title: Floating-point getallen
---

{% include menu.html %}

De vorige sectie laat zien dat getallen als `1.5` [rationale getallen](/nl/essentials/numbers/rats) zijn. C++ heeft `double` getallen. In Raku kun je zo'n getal ook maken. Gebruik de wetenschappelijke notatie, met de letter `e` of `E`:

```raku
1E0
314e-2
-5e-20
5.424E40
7.6e+15
```

Hier maakt Raku waarden van het datatype `Num`. Vanbinnen bewaart Raku ze als IEEE-getallen.

## Ingebouwde constanten

Hieronder staan een paar constanten. Je kunt ze direct gebruiken. Het zijn getallen van het type `Num`. Je kunt elke constante in ASCII of in Unicode schrijven:

`pi` | `π` | 3.141592653589793
`tau` | `τ` | hetzelfde als `2 * π`
`e` | `𝑒` | 2.718281828459045

{% include nav.html %}
