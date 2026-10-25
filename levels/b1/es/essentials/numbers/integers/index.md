---
title: Números enteros
---

{% include menu.html %}

El tipo de dato `Int` es para los enteros, es decir, números sin decimales. Pueden ser positivos o negativos. Puedes añadir un signo `+` si quieres. Aquí hay algunos ejemplos obvios:

```raku
42
-42
100
-5
0
```

Sí, por defecto, Raku trata un simple `0` como un entero.

## Grupos de dígitos

Raku tiene una característica simpática que te ayuda a escribir números grandes. Puedes dividir los dígitos en grupos de miles para que sean más fáciles de leer:

```raku
1_000_000
-3_141_592
```

Puedes crear un número como `34_56`, pero es mejor no hacerlo. A otras personas que lean tu código les puede resultar confuso. Pero no puedes poner dos guiones bajos uno al lado del otro. Además, un número no puede empezar ni terminar con un guion bajo.

## Enteros de cualquier longitud

Raku no tiene problemas con números más allá de los límites de 32 o 64 bits. Por ejemplo, el siguiente programa es correcto. Multiplica dos enteros grandes e imprime el resultado correcto.

```raku
say 1_234_456_789_012_345_678_901 * 987_654_321_098_765_432_100;
```

{% include nav.html %}
