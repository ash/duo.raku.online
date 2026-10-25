---
title: Restricciones de tipo
---

{% include menu.html %}

Raku tiene el llamado sistema de tipos gradual. En la mayoría de los casos, no necesitas preocuparte por el tipo de una variable. Pero a veces puedes querer limitar una variable a un solo tipo. Puedes hacerlo indicando el tipo, como se muestra abajo:

```raku
my Int $var = 42;
```

Ahora puedes asignar otro valor entero a `$var`. Pero si intentas poner una cadena en ella, obtienes una excepción. Lo mismo pasa incluso con un número de punto flotante:

```raku
my Int $var = 42;
$var = '314E-2';
```

Este programa da el siguiente error:

    Type check failed in assignment to $var; expected Int but got Str ("314E-2")
      in block <unit> at t.raku line 2

{% include nav.html %}
