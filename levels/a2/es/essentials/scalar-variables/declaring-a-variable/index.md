---
title: Declaración de una variable
---

{% include menu.html %}

Debes anunciar una variable antes de usarla. Raku tiene palabras especiales para esto. Se llaman _declaradores_. Para declarar una variable, usa `my`, así:

```raku
my $name;
```

Ahora tienes una nueva variable. Todavía no tiene valor. Pero el compilador ya conoce su nombre. Más tarde, el programa usa el mismo nombre otra vez. Entonces el compilador reconoce esta variable.

## Más de una variable

Un solo `my` puede declarar dos o más variables:

```raku
my ($x, $y);
```

{% include nav.html %}
