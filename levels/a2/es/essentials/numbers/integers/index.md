---
title: Números enteros
---

{% include menu.html %}

Los enteros son números sin decimales. En Raku, el tipo de dato `Int` es para los enteros. Un entero puede ser positivo o negativo. También puedes escribir un signo `+` antes de un número si quieres. Aquí hay algunos ejemplos simples:

```raku
42
-42
100
-5
0
```

Sí, un simple `0` también es un entero por defecto.

## Grupos de dígitos

Raku tiene una característica agradable para los números grandes. Puedes dividir los dígitos en grupos de miles. Así los números son más fáciles de leer:

```raku
1_000_000
-3_141_592
```

También puedes escribir un número como `34_56`. Es mejor no hacer esto. Puede confundir a otras personas que leen tu código. Pero no puedes poner dos guiones bajos juntos. Y un número no puede empezar ni terminar con un guion bajo.

## Enteros de cualquier longitud

Raku trabaja perfectamente con números muy grandes. Pueden ser más grandes que los límites de 32 o 64 bits. Por ejemplo, el programa de abajo está bien. Multiplica dos enteros grandes e imprime el resultado correcto.

```raku
say 1_234_456_789_012_345_678_901 * 987_654_321_098_765_432_100;
```

{% include nav.html %}
