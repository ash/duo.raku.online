---
title: Interpolación de variables
---

{% include menu.html %}

En las últimas secciones, algunas cadenas estaban entre comillas simples. Otras cadenas estaban entre comillas dobles. ¿Te diste cuenta? La diferencia es muy importante.

¿Necesitas una comilla simple dentro de una cadena? La forma más fácil es usar comillas dobles, claro:

```raku
say "O'Henry";
```

Por cierto, un apóstrofe de verdad sigue siendo mejor que una comilla simple. La razón es que [Raku es bueno con Unicode](../../on-unicode).

```raku
say 'O’Henry';
```

Pero el verdadero poder de las comillas dobles es otra cosa. Pueden _interpolar_ variables. ¡Pronto veremos que también pueden ejecutar código! Mira este programa:

```raku
my $name = 'Karl';
say "Hello, $name!";
```

Como puedes adivinar, el programa imprime `Hello, Karl!`. Raku quita el nombre `$name`, con el sigil `$`. Pone el valor de la variable en su lugar.

Raku usa el valor que tiene la variable en el momento de la interpolación. Puedes cambiar el valor de `$name`. Luego la interpolas otra vez. Ahora la cadena recibe el nuevo valor. Vamos a probarlo:

```raku
my $name = 'Karl';
say "Hello, $name!";

$name = 'Anna';
say "Hello, $name!";
```

Esta vez, la misma cadena crea mensajes diferentes:

    Hello, Karl!
    Hello, Anna!

{% include nav.html %}
