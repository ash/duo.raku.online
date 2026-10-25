---
title: El array `@*ARGS`
---

{% include menu.html %}

Ahora que conoces las matrices, veamos una de las matrices integradas: `@*ARGS`. El `*` de su nombre es un segundo sigilo, o _twigil_. Veremos más de ellos más adelante. Pero por ahora, veamos por qué esta matriz especial es útil. Contiene los argumentos que el programa recibe de la línea de comandos.

Mira la siguiente ejecución de un programa:

```console
$ raku run.raku alpha beta
```

El programa `run.raku` recibe dos parámetros, `alpha` y `beta`. Dentro del programa, puedes leerlos desde `@*ARGS`.

```raku
say @*ARGS.elems;
say @*ARGS[0];
say @*ARGS[1];
```

Este programa imprime cuántos argumentos recibió y luego los propios argumentos:

```console
$ raku run.raku alpha beta
2
alpha
beta
```

Observa que el programa no necesita ningún cambio si lo ejecutas como un archivo ejecutable:

```console
$ ./run.raku alpha beta
```

En este caso, el programa [debería tener un shebang](/es/essentials/running-programs/from-command-line). Pero lo más importante es que los índices de `@*ARGS` siguen empezando en `0`:

```raku
#!/usr/bin/env raku

say @*ARGS.elems;
say @*ARGS[0];
say @*ARGS[1];
```

{% include nav.html %}
