---
title: Comentarios de varias líneas
---

{% include menu.html %}

Si tu comentario ocupa más de una línea, puedes elegir. Puedes escribir varios comentarios de una sola línea o un solo comentario de varias líneas.

Los comentarios de varias líneas empiezan con dos caracteres: ``#` ``. Después viene un par de caracteres de apertura y cierre: `( )`, `{ }`, `[ ]` o `< >`. También puedes repetirlos, por ejemplo, `(( ))`, `[[[ ]]]` y así sucesivamente.

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
