---
title: Scientific notation in Raku
---

{% include menu.html %}

In the previous section, we saw that numbers like `1.5` are [rational numbers](/essentials/numbers/rats). To get a number like a `double` in C++, use scientific notation:

```raku
1E0
314e-2
-5e-20
5.424E40
7.6e+15
```

In this case, Raku creates objects of the `Num` data type. Inside, it stores them as IEEE numbers.

## Built-in constants

There are a few constants below that you can use straight away. They are numbers of the `Num` type. You can write each of them in ASCII or in Unicode:

`pi` | `π` | 3.141592653589793
`tau` | `τ` | equal to `2 * π`
`e` | `𝑒` | 2.718281828459045

{% include nav.html %}
