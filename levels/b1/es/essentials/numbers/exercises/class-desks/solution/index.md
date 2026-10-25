---
title: 'Solution: Pupitres en clase'
---

{% include menu.html %}

Puedes ver la solución abajo.

## Código

```raku
my $students = 23;

my $desks = $students div 2 + $students % 2;

say "$desks desks must be bought.";
```

🦋 Puedes encontrar el código completo en el archivo [class-desks.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/numbers/class-desks.raku).

## Salida

Ejecuta el programa al menos dos veces. Prueba con un número impar y con un número par de estudiantes. Por ejemplo, para los números de entrada `23` y `24`, el programa imprime el mismo resultado:

```console
$ raku exercises/numbers/class-desks.raku
12 desks must be bought.
```

## Comentarios

No basta con dividir el número de estudiantes entre dos. El programa debe manejar tanto números impares como pares. Aquí tienes una forma posible de redondear el número hacia arriba: `$students div 2 + $students % 2`. Cuando el número de estudiantes es par, la segunda parte es cero. Entonces el resultado es la mitad del número de estudiantes. Cuando el número es impar, la primera parte sigue siendo un entero. Esto es porque usamos `div` en lugar de `/`. Y la segunda parte de la expresión añade un escritorio extra.

{% include nav.html %}
