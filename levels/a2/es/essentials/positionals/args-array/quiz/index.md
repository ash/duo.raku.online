---
title: Quiz — El array `@*ARGS`
---

{% include menu.html %}

Ejecutas este programa varias veces. Encuentra las respuestas correctas para cada ejecución.

El programa está en el archivo `t.raku`. Aquí está su código:

```raku
say @*ARGS.elems;
say @*ARGS[0];
```

## 1

Ejecutas el programa así:

```console
$ raku t.raku hello world
```

¿Qué imprime cada línea de código?

{:.quiz-select}
2 | `say @*ARGS.elems;` imprime&nbsp; (: 1, 2 :)
hello | `say @*ARGS[0];` imprime&nbsp; (: hello, world, hello world :)

## 2

Ejecutas el programa así:

```console
$ raku t.raku "hello world"
```

¿Qué imprime el programa?

{:.quiz-select}
1 | `say @*ARGS.elems;` imprime&nbsp; (: 1, 2 :) | La cadena entre comillas es un solo argumento.
hello world | `say @*ARGS[0];` imprime&nbsp; (: hello, &quot;hello&quot;, world, &quot;world&quot;, hello world, &quot;hello world&quot; :)

## 3

Ejecutas el programa así:

```console
$ raku t.raku "hello" "world"
```

¿Qué imprime?

{:.quiz-select}
2 | `say @*ARGS.elems;` imprime&nbsp; (: 1, 2 :)
hello | `say @*ARGS[0];` imprime&nbsp; (: hello, &quot;hello&quot;, world, &quot;world&quot;, hello world, &quot;hello world&quot; :) | Las comillas del shell no se incluyen en el valor del argumento.

{% include quiz.html %}

{% include nav.html %}
