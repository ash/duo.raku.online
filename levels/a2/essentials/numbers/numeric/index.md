---
title: Scientific notation in Raku
---

{% include menu.html %}

The last section shows that numbers like `1.5` are [rational numbers](/essentials/numbers/rats). C++ has `double` numbers. In Raku, you can make such a number too. Use scientific notation, with the letter `e` or `E`:

```raku
1E0
314e-2
-5e-20
5.424E40
7.6e+15
```

Here, Raku makes values of the `Num` data type. Inside, Raku keeps them as IEEE numbers.

## Built-in constants

Below are a few constants. You can use them directly. They are numbers of the `Num` type. You can write each one in ASCII or in Unicode:

`pi` | `π` | 3.141592653589793
`tau` | `τ` | the same as `2 * π`
`e` | `𝑒` | 2.718281828459045

{% include nav.html %}
