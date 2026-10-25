---
title: Bloques `if`
---

{% include menu.html %}

La verificación condicional `if` comprueba una condición. Cuando la condición es `True`, se ejecuta un bloque de código.

```raku
if 10 > 4 {
    say '¡Las matemáticas funcionan!';
}
```

Observa que no necesitas poner la condición entre paréntesis. Pero puedes hacerlo si quieres.

Por supuesto, las variables son muy bienvenidas en las pruebas:

```raku
my $flag = False;
if $flag {
    # . . . hacer algo
}
```

Si varias verificaciones usan la misma variable, puedes poner las comparaciones en cadena:

```raku
my $x = 42;
if 40 < $x < 45 {
    say "Se ha dado la respuesta correcta $x.";
}
```

Si la condición no se cumple, su bloque de código no se ejecuta. Luego el programa continúa como siempre.

```raku
say 'Inicio';
if False {
    say 'Esto nunca se imprime.';
}
say 'Fin';
```

Este programa solo imprime `Inicio` y `Fin`.

{% include nav.html %}
