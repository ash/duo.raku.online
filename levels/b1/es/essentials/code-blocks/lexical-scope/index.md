---
title: Alcance léxico
---

{% include menu.html %}

Un bloque de código crea lo que se llama un alcance léxico. Si declaras una variable en un bloque, es visible dentro del bloque. Pero ya no es visible cuando el programa sale del bloque. Aquí tienes un ejemplo:

```raku
{
    my $x = 42;
    say $x;
}

say $x;
```

La variable `$x` se crea en el bloque de código. El primer `say $x` imprime su valor, porque la variable es visible dentro del bloque. El segundo `say $x` falla, porque el nombre `$x` no existe fuera del bloque. Cuando el bloque ha terminado, el nombre ya no se conoce. El programa no compila, y obtienes un error:

    ===SORRY!=== Error while compiling /Users/ash/raku-course/t.raku
    Variable '$x' is not declared
    at /Users/ash/raku-course/t.raku:6
    ------> say ⏏$x;

{% include nav.html %}
