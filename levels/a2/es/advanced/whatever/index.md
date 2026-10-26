---
title: La estrella Whatever
---

{% include menu.html %}

Quizás has visto `*` en expresiones como `* * 2` o `* %% 2`. Las usas con `map` y `grep`. Este `*` es la _estrella Whatever_. La expresión que la rodea crea una pequeña función. La función tiene un argumento. Raku la crea justo ahí, en ese lugar. Esta sección explica qué es de verdad la estrella. También compara la estrella con un bloque. Y muestra dónde la estrella sola significa simplemente "lo que quieras".

## Una estrella crea una función

Una expresión puede tener un `*` dentro. Entonces Raku convierte toda la expresión en una función. Esta función es un `WhateverCode`. En ella, la estrella representa el argumento:

```raku
my $double = * * 2;

say $double.^name; # WhateverCode
say $double(21);   # 42
```

`* * 2` es una función. Toma un argumento y lo multiplica por dos. Por eso funciona `(1..5).map(* * 2)`. `map` recibe justo este tipo de función con un argumento.

## Whatever o un bloque

Una expresión Whatever es una forma corta de escribir una función. También puedes escribir la misma función como un bloque. Estas tres líneas hacen lo mismo:

```raku
* * 2
{ $_ * 2 }
-> $x { $x * 2 }
```

La forma Whatever no tiene nombre de parámetro. La forma de bloque usa la variable tópica `$_`. La forma puntiaguda tiene el nombre `$x`. La última, `-> $x { ... }`, es en sí misma una pequeña función. La verás más adelante, en [Subrutinas anónimas](/es/advanced/anonymous-subroutines). Aquí, mírala simplemente como una tercera forma de la misma función. Esta función tiene un argumento. Para una expresión simple, la estrella es la más corta. Por eso la gente la usa mucho con `map`, `grep` y `sort`:

```raku
say (1..5).map(* * 2);            # (2 4 6 8 10)
say (1..5).map({ $_ * 2 });       # (2 4 6 8 10)
say (1..5).map(-> $x { $x * 2 }); # (2 4 6 8 10)
```

Usa un **bloque** si el código necesita más de una expresión. Un bloque también es mejor si ayuda un nombre de parámetro claro. Usa la **estrella** si basta con una expresión corta.

## Más de una estrella

Cada `*` en la expresión es un argumento distinto. Van en orden. Así que dos estrellas crean una función con **dos** argumentos:

```raku
my $add = * + *;

say $add(3, 4); # 7
```

Aquí, `* + *` es una función con dos argumentos. Los suma. Por ejemplo, pueden ser el total hasta ahora y el siguiente elemento.

## La estrella Whatever sola

La estrella sola, `*`, significa "lo que sea". Puede significar "todo lo que haya". También puede significar "sin límite". Aquí tienes dos usos comunes:

```raku
my @a = 10, 20, 30;
say @a[*-1];        # 30  — * es la longitud del arreglo, asi que *-1 es el ultimo indice

say (1..*).head(3); # (1 2 3)  — 1..* es un rango abierto
```

En `@a[*-1]`, la estrella es el número de elementos. En `1..*`, la estrella significa "sin límite superior". A veces la estrella crea una función. A veces significa "lo que quieras". En los dos casos, es una de las formas cortas más útiles de Raku.

{% include nav.html %}
