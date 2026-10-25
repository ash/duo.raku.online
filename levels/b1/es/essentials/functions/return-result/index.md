---
title: Devolver el resultado
---

{% include menu.html %}

Las funciones a menudo hacen algo y también devuelven un resultado. Por ejemplo, en la programación funcional, las funciones no deben tener efectos secundarios. Imprimir en la consola es uno de esos efectos secundarios. Pero Raku no te impide hacerlo. Veamos cómo una función devuelve un valor. También veremos cómo lo recibe el código que llama.

```raku
sub add($x, $y) {
    return $x + $y;
}

my $sum = add(10, 20);
say $sum; # 30
```

Aquí, la función `add` toma dos números y devuelve su suma. Usa un `return` explícito. El código que llama puede usar el valor devuelto como cualquier otro valor. En el programa de arriba, el valor se asigna a una variable.

## El último valor calculado

En Raku, un `return` explícito no siempre es necesario. Puedes omitirlo cuando el resultado es el último valor que calcula la función. Así nuestra función `add` puede ser más simple:

```raku
sub add($x, $y) {
    $x + $y
}
```

Quizás has notado que la línea no tiene punto y coma al final. No hace falta, porque esta línea termina el bloque de código.

Las funciones pequeñas y simples como esta a menudo se escriben en una sola línea. Esto hace el código más compacto:

```raku
sub add($x, $y) { $x + $y }
```

## Sin datos de retorno

A veces necesitas retornar de una función antes del final de su cuerpo. Si la función no devuelve ningún resultado, usa `return` sin nada más.

```raku
sub test($x) {
    return if $x <= 10;
    say "$x está por encima del límite";
}
```

{% include nav.html %}
