---
title: Twigils
---

{% include menu.html %}

Un _twigil_ es un carácter. Está entre el sigilo y el nombre de una variable. No cambia el nombre. Cambia cómo funciona la variable. También cambia cómo la encuentra Raku. Estos son los twigils comunes:

* `*` — una variable **dinámica**, por ejemplo, `$*OUT`; Raku la encuentra a través de la pila de llamadas
* `?` — un valor de **tiempo de compilación**; el compilador lo pone, por ejemplo, `$?FILE` y `$?LINE`
* `!` — un atributo **privado** de un objeto, por ejemplo, `$!balance`
* `.` — un atributo que usas a través de su método accesor, por ejemplo, `$.name`

Ya conoces algunos de ellos, pero sin el nombre “twigil”. `$*OUT` y `$*IN` son dinámicos. Y viste `$!` y `$.` en [la parte sobre objetos](/es/oop).

El compilador da sus valores a las variables `?`. Lo hace cuando compila tu programa:

```raku
say $?LINE; # the line number of this statement
say $?FILE; # the path of this source file
```

Cada twigil muestra un tipo diferente de variable. Lo ves enseguida. Cuando lees `$*foo`, sabes que es dinámica. Y `$?foo` es una constante de tiempo de compilación. El siguiente tema mira de cerca las [variables dinámicas](/es/advanced/special-variables/dynamic-variables). Funcionan de forma muy diferente a las variables léxicas que conoces.

{% include nav.html %}
