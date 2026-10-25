---
title: Restricciones de tipo
---

{% include menu.html %}

Raku tiene el llamado sistema de tipos gradual. Esto significa que puedes usar tipos solo donde los quieres. Normalmente, no necesitas dar el tipo de una variable. Pero a veces quieres limitar el tipo de una variable. Entonces da el tipo así:

```raku
my Int $var = 42;
```

Ahora puedes asignar otro valor entero a `$var`. Pero no puedes poner una cadena en ella. Ni siquiera puedes poner un número de punto flotante. Si lo intentas, obtienes una excepción:

```raku
my Int $var = 42;
$var = '314E-2';
```

El programa da este error:

    Type check failed in assignment to $var; expected Int but got Str ("314E-2")
      in block <unit> at t.raku line 2

{% include nav.html %}
