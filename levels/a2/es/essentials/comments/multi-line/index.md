---
title: Comentarios de varias líneas
---

{% include menu.html %}

A veces un comentario es más largo que una línea. Entonces tienes dos opciones. Puedes escribir unos cuantos comentarios de una sola línea. O puedes escribir un comentario de varias líneas.

Un comentario de varias líneas empieza con dos caracteres: ``#` ``. Luego viene un par de corchetes: `( )`, `{ }`, `[ ]` o `< >`. También puedes repetirlos: `(( ))`, `[[[ ]]]` y así sucesivamente.

Por ejemplo:

```raku
my $name;
#`( Vamos a pedirle al usuario
que ingrese su nombre primero y luego
guardaremos la entrada en una variable. )

$name = prompt '¿Cuál es tu nombre? ';
#`{ El programa ahora espera
hasta que el usuario ingrese el nombre
y presione Enter. }

say $name; #`( Y ahora podemos imprimirlo )
```

{% include nav.html %}
