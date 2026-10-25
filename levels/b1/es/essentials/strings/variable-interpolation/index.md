---
title: Interpolación de variables
---

{% include menu.html %}

En las secciones anteriores, algunas cadenas estaban entre comillas simples y otras entre comillas dobles. ¿Te has dado cuenta? Esta diferencia es muy importante.

Por supuesto, las comillas dobles facilitan poner una comilla simple dentro de una cadena:

```raku
say "O'Henry";
```

Por cierto, un apóstrofe correcto sigue siendo mejor que una comilla simple. Al fin y al cabo, [Raku es bueno con Unicode](../../on-unicode).

```raku
say 'O’Henry';
```

Pero el verdadero poder de las comillas dobles es que pueden _interpolar_ variables. ¡Como veremos pronto, incluso pueden ejecutar código! Echa un vistazo a este programa:

```raku
my $name = 'Karl';
say "Hello, $name!";
```

Como probablemente esperas, el programa imprime `Hello, Karl!`. El valor de la variable reemplazó el nombre `$name`, junto con su sigil `$`.

El valor interpolado es el valor que tiene la variable en el momento de la interpolación. Así que si cambias `$name` y la interpolas otra vez, se usa el nuevo valor. Vamos a probarlo:

```raku
my $name = 'Karl';
say "Hello, $name!";

$name = 'Anna';
say "Hello, $name!";
```

Esta vez, la misma cadena produce mensajes diferentes:

    Hello, Karl!
    Hello, Anna!

{% include nav.html %}
