---
title: 'Solution: Pupitres en clase'
---

{% include menu.html %}

Aquí está la solución.

## Código

```raku
my $students = 23;

my $desks = $students div 2 + $students % 2;

say "$desks desks must be bought.";
```

🦋 Puedes encontrar el código completo en el archivo [class-desks.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/numbers/class-desks.raku).

## Salida

Ejecuta el programa dos veces o más. Prueba un número impar de estudiantes y un número par. Por ejemplo, prueba `23` y `24`. Con los dos números, el programa imprime el mismo resultado:

```console
$ raku exercises/numbers/class-desks.raku
12 desks must be bought.
```

## Comentarios

No puedes solo dividir el número de estudiantes entre dos. El programa debe funcionar con números impares y pares. Aquí tienes una forma de redondear el número hacia arriba: `$students div 2 + $students % 2`. La expresión tiene dos partes. Si el número de estudiantes es par, la segunda parte es cero. Entonces el resultado es la mitad del número de estudiantes. Pero si es impar, la primera parte sigue siendo un entero. Esto es porque usamos `div`, no `/`. Y la segunda parte añade un escritorio más.

{% include nav.html %}
