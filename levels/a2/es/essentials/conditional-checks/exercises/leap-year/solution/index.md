---
title: 'Solution: Año bisiesto'
---

{% include menu.html %}

## Descargo de responsabilidad

La solución de abajo es para practicar. Te entrena para usar comprobaciones condicionales. Raku tiene una clase `Date` incorporada. En la vida real, puedes aprender sus métodos. Aprendemos sobre esta clase en la segunda parte del curso.

## Solución

Estos pasos dicen si un año es bisiesto:

1. si el año no es divisible por 4 => año común
1. si el año no es divisible por 100 => año bisiesto
1. si el año no es divisible por 400 => año común
1. de lo contrario => año bisiesto

Raku tiene tipos incorporados para fechas y horas. También puedes usarlos. Por eso, la segunda parte del curso tiene esta tarea otra vez.

## Código 1

La primera solución sigue exactamente los pasos de arriba:

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

La segunda solución pone toda la lógica en una sola expresión. No siempre necesitas los paréntesis. Aquí los ponemos para hacer el código más claro.

```raku
my $year = prompt 'Year: ';

say (($year %% 400) || (($year %% 4) && ($year % 100))) ?? 'Leap year' !! 'Common year';
```

🦋 Encuentra el programa en el archivo [leap-year-fórmula.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/conditional-checks/leap-year-formula.raku).

## Salida

Prueba los dos programas con los casos más importantes. Por ejemplo, usa 1900, 2000, 2020 y 2021.

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

A veces Raku necesita `True` o `False`. Lo llamamos contexto booleano. En un contexto booleano, `%%` y `%` dan resultados opuestos. Si uno da `True`, el otro da `False`. Puedes usar este hecho. Elige uno de los dos operadores. Entonces no necesitas escribir una comparación con cero.

```raku
say ?(100 % 3);    # True
say 100 % 3 != 0;  # True

say ?(100 %% 3);   # False
say 100 %% 3 != 0; # False
```
%%/tipblock

{% include nav.html %}
