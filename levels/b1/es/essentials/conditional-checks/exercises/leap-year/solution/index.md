---
title: 'Solution: Año bisiesto'
---

{% include menu.html %}

## Descargo de responsabilidad

La solución de abajo sirve para practicar con comprobaciones condicionales. Para tareas reales, puedes estudiar los métodos de la clase `Date` incorporada. Esta clase aparece en la segunda parte del curso.

## Solución

Este algoritmo dice si un año es bisiesto:

1. si el año no es divisible por 4 => año común
1. si el año no es divisible por 100 => año bisiesto
1. si el año no es divisible por 400 => año común
1. de lo contrario => año bisiesto

Ten en cuenta que Raku tiene tipos incorporados para trabajar con fechas y horas. Por eso, volveremos a esta tarea en la segunda parte del curso.

## Código 1

La primera solución hace exactamente lo que dicen los pasos de arriba:

```raku
my $year = prompt 'Year: ';

if $year % 4 {
    say 'Common year';
}
elsif $year % 100 {
    say 'Leap year';
}
elsif $year % 400 {
    say 'Common year';
}
else {
    say 'Leap year';
}
```

🦋 Encuentra el programa en el archivo [leap-year.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/conditional-checks/leap-year.raku).

## Código 2

En la segunda solución, toda la lógica está en una sola expresión. Los paréntesis no siempre son necesarios, pero aquí hacen el código más claro.

```raku
my $year = prompt 'Year: ';

say (($year %% 400) || (($year %% 4) && ($year % 100))) ?? 'Leap year' !! 'Common year';
```

🦋 Encuentra el programa en el archivo [leap-year-fórmula.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/conditional-checks/leap-year-formula.raku).

## Salida

Prueba los dos programas con los casos más importantes, por ejemplo, 1900, 2000, 2020 y 2021.

```console
$ raku exercises/conditional-checks/leap-year.raku
Year: 1900
Common year

$ raku exercises/conditional-checks/leap-year.raku
Year: 2000
Leap year
```

```console
$ raku exercises/conditional-checks/leap-year-formula.raku
Year: 2020
Leap year

$ raku exercises/conditional-checks/leap-year-formula.raku
Year: 2021
Common year
```

%%tipblock
## `%%` vs `%`

Ten en cuenta que en un contexto booleano, los operadores `%%` y `%` dan resultados opuestos. Puedes usar esto para elegir el operador adecuado. Así no necesitas escribir una comparación con cero.

```raku
say ?(100 % 3);    # True
say 100 % 3 != 0;  # True

say ?(100 %% 3);   # False
say 100 %% 3 != 0; # False
```
%%/tipblock

{% include nav.html %}
