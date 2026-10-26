---
title: La estrella Whatever
---

{% include menu.html %}

Puede que hayas visto `*` en expresiones como `* * 2` o `* %% 2`. Aparecen en llamadas a `map` y `grep`. Ese `*` es la _estrella Whatever_. La expresión que la rodea crea una pequeña función con un argumento, ahí mismo. Esta sección explica qué es de verdad la estrella y cómo se relaciona con un bloque. También muestra dónde la estrella sola significa simplemente "lo que quieras".

## Una estrella crea una función

Cuando una expresión contiene `*`, Raku convierte toda la expresión en una función, un `WhateverCode`. En esta función, la estrella representa el argumento:

```raku
my $double = * * 2;

say $double.^name; # WhateverCode
say $double(21);   # 42
```

`* * 2` es una función que multiplica su único argumento por dos. Por eso funciona `(1..5).map(* * 2)`. `map` recibe exactamente una función así, con un argumento.

## Whatever comparado con un bloque

Una expresión Whatever es una forma más corta de escribir una función. También podrías escribir esta función como un bloque. Estas tres son iguales:

```raku
* * 2
{ $_ * 2 }
-> $x { $x * 2 }
```

La forma Whatever no nombra ningún parámetro. La forma de bloque usa la variable tópica `$_`, y la forma puntiaguda nombra `$x`. La última, `-> $x { ... }`, es una pequeña función por sí misma. La aprenderás bien en [Subrutinas anónimas](/es/advanced/anonymous-subroutines). Aquí, léela solo como una tercera forma de escribir la misma función de un argumento. Para una expresión simple, la estrella es la más corta. Por eso es tan común con `map`, `grep` y `sort`:

```raku
say (1..5).map(* * 2);            # (2 4 6 8 10)
say (1..5).map({ $_ * 2 });       # (2 4 6 8 10)
say (1..5).map(-> $x { $x * 2 }); # (2 4 6 8 10)
```

Elige un **bloque** cuando el código necesite más de una expresión. Un bloque también es bueno cuando ayude un nombre de parámetro claro. Elige la **estrella** cuando baste con una expresión corta.

## Más de una estrella

Cada `*` en la expresión es un argumento propio, en orden. Así que dos estrellas crean una función con **dos** argumentos:

```raku
my $add = * + *;

say $add(3, 4); # 7
```

Aquí, `* + *` es una función con dos argumentos, y los suma. Por ejemplo, puede sumar un total acumulado y el siguiente elemento.

## La estrella Whatever por sí sola

Por sí sola, `*` significa "lo que sea": todo lo que haya, o sin límite. Aquí tienes dos usos comunes:

```raku
my @a = 10, 20, 30;
say @a[*-1];        # 30  — * es la longitud del arreglo, asi que *-1 es el ultimo indice

say (1..*).head(3); # (1 2 3)  — 1..* es un rango abierto
```

En `@a[*-1]`, la estrella representa el número de elementos. En `1..*`, significa "sin límite superior". La estrella puede crear una función o significar "lo que quieras". En cualquier caso, es una de las formas cortas más útiles de Raku.

{% include nav.html %}
