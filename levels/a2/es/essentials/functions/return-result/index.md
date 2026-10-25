---
title: Devolver el resultado
---

{% include menu.html %}

A menudo una función hace algo y también devuelve un resultado. En la programación funcional, por ejemplo, las funciones no deben tener efectos secundarios. Imprimir en la consola es uno de estos efectos. Pero Raku te deja hacer esto. Veamos cómo una función devuelve un valor. También vemos cómo el código que llama recibe este valor.

```raku
sub add($x, $y) {
    return $x + $y;
}

my $sum = add(10, 20);
say $sum; # 30
```

Aquí, la función `add` toma dos números. Devuelve su suma. La función tiene la palabra `return` en su código. El código que llama puede usar este valor como cualquier otro valor. En el programa de arriba, lo asignamos a una variable.

## El último valor

El resultado puede ser el último valor en el cuerpo de la función. Entonces, en Raku, no tienes que escribir `return`. Así podemos hacer más simple nuestra función `add`:

```raku
sub add($x, $y) {
    $x + $y
}
```

Nota que la línea no tiene punto y coma al final. La línea es la última del bloque de código. Por eso allí no hace falta un punto y coma.

A menudo escribimos funciones pequeñas y simples como esta en una sola línea. Así el código es más corto:

```raku
sub add($x, $y) { $x + $y }
```

## Sin datos para devolver

A veces una función debe retornar antes del final de su cuerpo. Si la función no devuelve ningún resultado, usa `return` sin valor.

```raku
sub test($x) {
    return if $x <= 10;
    say "$x está por encima del límite";
}
```

{% include nav.html %}
