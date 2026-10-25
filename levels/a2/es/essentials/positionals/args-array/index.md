---
title: El array `@*ARGS`
---

{% include menu.html %}

Ahora ya conoces las matrices. Así que veamos una matriz integrada, `@*ARGS`. Mira el `*` de su nombre. Es un segundo sigilo, o _twigil_. Más adelante vemos más twigils. Pero por ahora, veamos para qué sirve esta matriz especial. Guarda los argumentos del programa. El programa los recibe de la línea de comandos.

Mira esta ejecución de un programa:

```console
$ raku run.raku alpha beta
```

El programa `run.raku` recibe dos parámetros: `alpha` y `beta`. Puedes leerlos desde `@*ARGS`.

```raku
say @*ARGS.elems;
say @*ARGS[0];
say @*ARGS[1];
```

Este programa imprime el número de sus argumentos. Luego imprime los argumentos:

```console
$ raku run.raku alpha beta
2
alpha
beta
```

También puedes ejecutar el programa como un archivo ejecutable. Para esto no necesitas cambiar el programa:

```console
$ ./run.raku alpha beta
```

En este caso, el programa [necesita un shebang](/es/essentials/running-programs/from-command-line). Pero lo más importante es esto. Los índices de `@*ARGS` siguen empezando en `0`:

```raku
#!/usr/bin/env raku

say @*ARGS.elems;
say @*ARGS[0];
say @*ARGS[1];
```

{% include nav.html %}
