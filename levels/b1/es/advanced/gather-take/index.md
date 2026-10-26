---
title: '`gather` y `take`'
---

{% include menu.html %}

El par `gather` y `take` es una forma flexible de construir una lista. Pones algo de código dentro de un bloque `gather`. Cada vez que este código llama a `take`, el valor entra en la lista que devuelve `gather`.

```raku
my @result = gather {
    take 1;
    take 2;
    take 3;
};

say @result; # [1 2 3]
```

Las tres llamadas a `take` dan tres valores, y `gather` los recoge en una lista. Esta lista se guarda en `@result`.

El par es muy potente cuando las llamadas a `take` están repartidas por código normal. Un ejemplo es un bucle con una condición. Entonces la lista tiene solo los valores que elegiste tomar:

```raku
my @evens = gather for 1..10 {
    take $_ if $_ %% 2;
};

say @evens; # [2 4 6 8 10]
```

Aquí el bucle recorre los números del 1 al 10. Pero solo se toman los pares. Así que al final, `@evens` contiene `2, 4, 6, 8, 10`. El operador `%%` comprueba si un número se divide de forma exacta.

Esta división del trabajo es lo que hace tan útil a `gather`/`take`. El código de alrededor decide _cuándo_ producir un valor. Y `gather` recoge en silencio todo lo que se toma.

{% include nav.html %}
