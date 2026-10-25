---
title: La función `MAIN`
---

{% include menu.html %}

Un programa en Raku no necesita ningún código estándar que tengas que escribir siempre. Así que puedes empezar a escribir instrucciones útiles enseguida. Esta parte del programa está fuera de todos los [bloques de código](/es/essentials/code-blocks), incluidas las [funciones](/es/essentials/functions), por ejemplo. Se llama _mainline_.

Si un programa tiene una función con el nombre especial `MAIN`, Raku la ejecuta al final. Esto pasa después de compilar todo y de ejecutar el código mainline.

```raku
say '1. Código mainline';

sub MAIN {
    say '3. MAIN llamado';
}

say '2. También mainline';
```

Este programa primero ejecuta los `say` del nivel superior y luego llama a `MAIN`:

```console
$ raku t.raku
1. Código mainline
2. También mainline
3. MAIN llamado
```

Por supuesto, un programa también puede tener la función `MAIN` y ningún otro código mainline.

{% include nav.html %}
