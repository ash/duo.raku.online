---
title: Operaciones con números
---

{% include menu.html %}

Seguro que ya conoces algunas de las operaciones con números en Raku. Solo mencionemos que el símbolo de una _operación_ se llama _operador_. Los objetos con los que trabaja una operación se llaman _operandos_.

## Aritmética

**Operador** | **Operación**
`+` | Adición
`-` | Sustracción
`*` | Multiplicación
`/` | División

Como Raku [soporta Unicode](/es/essentials/on-unicode) muy bien, algunos de estos operadores también tienen versiones no ASCII:

`×` | Multiplicación
`÷` | División

Para cambiar el orden en que se hacen las operaciones, usa paréntesis:

```raku
say 3 * 4 + 5;   # 17
say 3 * (4 + 5); # 27
```

## Módulo

Como en muchos otros lenguajes, el operador de módulo es `%`.

`%` | Módulo

Devuelve el resto de la división entera de dos números, así que `10 % 3` es `1`. Ten en cuenta que `-10 % 3` es `2` por la forma en que se define la operación. El resultado de la división se redondea hacia abajo y se multiplica por el segundo número. Luego este valor se resta del primer número. Así que `$a % $b` significa lo mismo que `$a - $b * floor($a / $b)`.

## Divisibilidad

Raku añade un operador útil más. Comprueba si un número es divisible por otro.

`%%` | Divisibilidad

Este es un operador infijo: va entre sus dos operandos, como en `10 %% 3`. Si el primer operando es divisible por el segundo, obtienes un Booleano `True`. De lo contrario, obtienes `False`.

## Operaciones enteras

Algunas operaciones especiales devuelven enteros como resultado. Sus operadores son palabras en lugar de símbolos.

`div` | División entera
`mod` | Módulo entero

El operador `div` redondea el resultado hacia abajo. Así que `10 div 3` es `3`, y `-10 div 3` es `-4`.

Tanto `div` como `mod` esperan operandos enteros. Así que el programa de abajo no funcionará si descomentas las líneas marcadas con `Error`:

```raku
say 10.3 % 3;     # OK
# say 10.3 mod 3; # Error

say 10.3 / 3.3;     # OK
# say 10.3 div 3.3; # Error
```

## Potencia

Puedes obtener _x_ elevado a la _y_ de dos formas. Primero, puedes usar el operador `**`:

```raku
say 3 ** 4; # 81
```

Segundo, puedes usar dígitos en superíndice, es decir, dígitos pequeños y elevados. Por ejemplo:

```raku
say 3⁴; # 81
```

Puedes usar más de un dígito en superíndice para obtener una potencia mayor que 9. Por ejemplo:

```raku
say 2¹⁵; # 32768
```

Las potencias negativas tampoco son un problema:

```raku
say 2 ** (-2); ## 0.25
say 2⁻²; # 0.25
```

Observa que en las dos últimas expresiones, el resultado es un número `Rat`.

## Operaciones con asignación

Cuando necesitas actualizar una variable, todas las operaciones tienen una forma corta. Vamos a mostrarlo con el ejemplo de `+`.

La forma completa

```raku
$a = $a + $b;
```

significa lo mismo que:

```raku
$a += $b;
```

{% include nav.html %}
