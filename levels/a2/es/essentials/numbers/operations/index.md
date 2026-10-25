---
title: Operaciones con números
---

{% include menu.html %}

Seguro que ya conoces algunas operaciones con números en Raku. Aquí hay dos palabras para recordar. El símbolo de una _operación_ se llama _operador_. Una operación trabaja con algunos objetos. Se llaman _operandos_.

## Aritmética

**Operador** | **Operación**
`+` | Adición
`-` | Sustracción
`*` | Multiplicación
`/` | División

Raku [soporta Unicode](/es/essentials/on-unicode) muy bien. Así que algunos de estos operadores tienen una segunda forma con símbolos no ASCII:

`×` | Multiplicación
`÷` | División

Usa paréntesis para cambiar el orden de las operaciones:

```raku
say 3 * 4 + 5;   # 17
say 3 * (4 + 5); # 27
```

## Módulo

El operador de módulo es `%`. Es igual en muchos otros lenguajes.

`%` | Módulo

Da el resto de la división entera de dos números. El resto es lo que queda después de la división. Así que `10 % 3` es `1`. Pero nota que `-10 % 3` es `2`. Veamos por qué. Divide el primer número entre el segundo número. Redondea el resultado hacia abajo. Multiplícalo por el segundo número. Luego réstalo del primer número. Este es el resultado de `%`. Así que `$a % $b` es lo mismo que `$a - $b * floor($a / $b)`.

## Divisibilidad

Raku también tiene un operador útil para la divisibilidad. Comprueba si un número es divisible por otro. Esto significa que no hay resto.

`%%` | Divisibilidad

Este es un operador infijo. Va entre sus dos operandos: `10 %% 3`. ¿Es el primer operando divisible por el segundo? Entonces el resultado es el valor Booleano `True`. Si no lo es, el resultado es `False`.

## Operaciones enteras

Algunas operaciones especiales dan resultados enteros. Sus operadores son palabras, no símbolos.

`div` | División entera
`mod` | Módulo entero

El operador `div` redondea el resultado hacia abajo. Así que `10 div 3` es `3`. Y `-10 div 3` es `-4`.

Tanto `div` como `mod` necesitan operandos enteros. Mira las líneas marcadas con `Error` en el programa de abajo. Si les quitas el `#`, el programa no funciona:

```raku
say 10.3 % 3;     # OK
# say 10.3 mod 3; # Error

say 10.3 / 3.3;     # OK
# say 10.3 div 3.3; # Error
```

## Potencia

Hay dos formas de calcular _x_ elevado a _y_. La primera forma es el operador `**`:

```raku
say 3 ** 4; # 81
```

La segunda forma es usar dígitos en superíndice. Son dígitos pequeños en la parte de arriba de la línea. Por ejemplo:

```raku
say 3⁴; # 81
```

También puedes usar dos o más dígitos en superíndice. Así la potencia puede ser mayor que 9. Por ejemplo:

```raku
say 2¹⁵; # 32768
```

Una potencia negativa también funciona:

```raku
say 2 ** (-2); ## 0.25
say 2⁻²; # 0.25
```

Nota que las dos últimas expresiones dan un número `Rat`.

## Operaciones con asignación

A veces necesitas actualizar una variable con una operación. Todas las operaciones tienen una forma corta para esto. Aquí hay un ejemplo con `+`.

La forma completa

```raku
$a = $a + $b;
```

es lo mismo que:

```raku
$a += $b;
```

{% include nav.html %}
