---
title: '`gather` y `take`'
---

{% include menu.html %}

`gather` y `take` trabajan en pareja. Con ellos puedes construir una lista de muchas formas. Pones algo de código en un bloque `gather`. Cada vez que este código llama a `take`, un valor entra en una lista. El bloque `gather` te da esta lista.

```raku
my @result = gather {
    take 1;
    take 2;
    take 3;
};

say @result; # [1 2 3]
```

Las tres llamadas a `take` dan tres valores. `gather` los recoge en una lista. La lista va a `@result`.

El par es más útil cuando las llamadas a `take` están dentro de código normal. Por ejemplo, pueden estar en un bucle con una condición. Entonces la lista tiene solo los valores que tomas:

```raku
my @evens = gather for 1..10 {
    take $_ if $_ %% 2;
};

say @evens; # [2 4 6 8 10]
```

Aquí, el bucle recorre los números del 1 al 10. Pero el código toma solo los números pares. Así que al final, `@evens` tiene `2, 4, 6, 8, 10`. El operador `%%` comprueba si un número se divide sin resto.

Este reparto del trabajo hace que `gather`/`take` sea tan útil. El código alrededor de `take` decide _cuándo_ crear un valor. Y `gather` recoge en silencio cada valor que tomas.

{% include nav.html %}
