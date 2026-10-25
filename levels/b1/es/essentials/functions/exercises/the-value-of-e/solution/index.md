---
title: 'Solution: El valor de e'
---

{% include menu.html %}

## Descargo de responsabilidad

Raku tiene una constante incorporada `e`. Da la respuesta a esta tarea enseguida. La solución de abajo es solo para aprender.

## Código

La fórmula de esta tarea contiene un factorial. Ya tenemos al menos dos formas de calcularlo, y vendrán más. El programa de abajo define dos funciones. Una calcula el factorial, y la otra calcula la suma parcial de la fórmula.

La función también debe funcionar sin argumentos. En ese caso, el bucle se ejecuta un número fijo de veces. Así que podemos dar al parámetro un [valor predeterminado](/es/essentials/functions/default-values): `sub e-approx($max = 100)`.

En el código, nota que las dos funciones acumulan sus resultados de forma parecida. Usan un [bucle `for` postfijo](/es/essentials/loops/postfix-for) sobre un [rango](/es/essentials/ranges).

Aquí está la solución:

```raku
sub factorial($n) {
    my $f = 1;
    $f *= $_ for 1..$n;

    return $f;
}

sub e-approx($max = 100) {
    my $e = 1;
    $e += 1 / factorial($_) for 1..$max;

    return $e;
}

say e-approx(10);
say e-approx();
```

🦋 Encuentra el programa en el archivo [the-value-of-e.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/functions/the-value-of-e.raku).

## Salida

Con 10 y 100 vueltas del bucle, obtenemos estos resultados. Prueba también otros valores de `$max`.

```console
$ raku exercises/functions/the-value-of-e.raku
2.7182818
2.718281828459045
```

{% include nav.html %}
