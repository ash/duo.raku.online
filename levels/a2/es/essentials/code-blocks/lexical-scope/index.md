---
title: Alcance léxico
---

{% include menu.html %}

Un bloque de código crea un alcance léxico. ¿Qué significa esto? Creas una variable en un bloque. Es visible dentro de este bloque. Luego el programa sale del bloque. Después de eso, la variable no es visible. Mira un ejemplo:

```raku
{
    my $x = 42;
    say $x;
}

say $x;
```

La variable `$x` se crea en el bloque de código. El primer `say $x` está dentro del bloque. Ahí la variable es visible. Así que `say` imprime su valor. El segundo `say $x` falla. Fuera del bloque, el nombre `$x` no existe. Después del final del bloque, el programa no lo conoce. El programa no compila. Obtienes un error:

    ===SORRY!=== Error while compiling /Users/ash/raku-course/t.raku
    Variable '$x' is not declared
    at /Users/ash/raku-course/t.raku:6
    ------> say ⏏$x;

{% include nav.html %}
