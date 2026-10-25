---
title: 'Solution: El valor de e'
---

{% include menu.html %}

## Descargo de responsabilidad

Raku ya tiene una constante `e`. Esta constante da la respuesta a esta tarea enseguida. La solución de abajo es solo para aprender.

## Código

La fórmula tiene un factorial. Ya conocemos al menos dos formas de calcular un factorial. Después vienen más formas. El programa de abajo tiene dos funciones. Una función calcula el factorial. La otra suma los primeros elementos de la fórmula.

La función también debe funcionar sin argumentos. Entonces el bucle se ejecuta un número fijo de veces. Por eso damos al parámetro un [valor predeterminado](/es/essentials/functions/default-values): `sub e-approx($max = 100)`.

Mira el código. Las dos funciones construyen su resultado de forma parecida. Cada una tiene [`for` al final de una línea](/es/essentials/loops/postfix-for). Este bucle pasa por un [rango](/es/essentials/ranges).

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

Aquí tienes los resultados para 10 y 100 vueltas del bucle. Prueba también otros valores de `$max`.

```console
$ raku exercises/functions/the-value-of-e.raku
2.7182818
2.718281828459045
```

{% include nav.html %}
