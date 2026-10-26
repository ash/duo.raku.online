---
title: Twigils
---

{% include menu.html %}

Un _twigil_ es un carácter entre el sigilo y el nombre de una variable. No cambia el nombre. En cambio, cambia cómo se comporta la variable y cómo la encuentra Raku. Estos son los más comunes:

* `*` — una variable **dinámica**, como `$*OUT`, que Raku busca a través de la pila de llamadas
* `?` — un valor de **tiempo de compilación** que da el compilador, como `$?FILE` o `$?LINE`
* `!` — un atributo **privado** de un objeto, como `$!balance`
* `.` — un atributo al que llegas a través de su método accesor, como `$.name`

Ya has visto varios de ellos, pero no los llamamos twigils. Son los dinámicos `$*OUT` y `$*IN`, y `$!`/`$.` de [la parte sobre objetos](/es/oop).

El compilador rellena las variables `?` mientras compila tu programa:

```raku
say $?LINE; # the line number of this statement
say $?FILE; # the path of this source file
```

Cada twigil muestra enseguida un tipo diferente de variable. Cuando lees `$*foo`, sabes al momento que es dinámica. Y `$?foo` es una constante de tiempo de compilación. El siguiente tema mira las [variables dinámicas](/es/advanced/special-variables/dynamic-variables) en detalle. Se comportan de forma bastante diferente a las variables léxicas que has usado hasta ahora.

{% include nav.html %}
