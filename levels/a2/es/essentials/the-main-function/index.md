---
title: La función `MAIN`
---

{% include menu.html %}

Un programa en Raku no necesita ningún código especial al principio. Así que puedes empezar con código útil enseguida. Este código no está dentro de ningún [bloque de código](/es/essentials/code-blocks). Por ejemplo, no está dentro de una [función](/es/essentials/functions). Llamamos _mainline_ a esta parte del programa.

Un programa puede tener una función con el nombre especial `MAIN`. En este caso, Raku primero compila todo. Luego, ejecuta el código mainline. Después de eso, ejecuta la función `MAIN`.

```raku
say '1. Código mainline';

sub MAIN {
    say '3. MAIN llamado';
}

say '2. También mainline';
```

Primero, este programa ejecuta los `say` del nivel superior. Luego llama a `MAIN`:

```console
$ raku t.raku
1. Código mainline
2. También mainline
3. MAIN llamado
```

Por supuesto, un programa también puede tener solo la función `MAIN`. Entonces no tiene otro código mainline.

{% include nav.html %}
