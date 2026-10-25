---
title: Bloques `if`
---

{% include menu.html %}

`if` es una verificación condicional. Prueba una condición. Si la condición es `True`, `if` ejecuta un bloque de código.

```raku
if 10 > 4 {
    say '¡Las matemáticas funcionan!';
}
```

No necesitas poner la condición entre paréntesis. Pero puedes hacerlo si quieres.

Por supuesto, puedes usar variables en las pruebas:

```raku
my $flag = False;
if $flag {
    # . . . hacer algo
}
```

A veces dos o más verificaciones usan la misma variable. Entonces puedes escribir las comparaciones en cadena:

```raku
my $x = 42;
if 40 < $x < 45 {
    say "Se ha dado la respuesta correcta $x.";
}
```

A veces la condición es `False`. Entonces Raku no ejecuta el bloque de código. El programa simplemente sigue.

```raku
say 'Inicio';
if False {
    say 'Esto nunca se imprime.';
}
say 'Fin';
```

Este programa imprime solo `Inicio` y `Fin`.

{% include nav.html %}
