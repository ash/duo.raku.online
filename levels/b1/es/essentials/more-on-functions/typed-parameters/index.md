---
title: Parámetros tipados
---

{% include menu.html %}

En Raku, puedes limitar los parámetros de una función a un tipo. Esto es muy similar a las [variables tipadas](/es/essentials/typed-variables/type-constraints/).

```raku
sub add(Int $x, Int $y) { $x + $y }
```

Ahora la función exige que sus argumentos sean enteros.

```raku
say add(10, 20);
# say add(pi, e); # Error
```

Pasar un valor de cualquier tipo que no sea `Int` causa un error de compilación.

```
$ raku t.raku
===SORRY!=== Error while compiling t.raku
Calling add(Num, Num) will never work with declared signature (Int $x, Int $y)
at t.raku:5
------> say ⏏add(pi, e);
```

Nota que aquí Raku no convertirá los tipos automáticamente. En otros casos, sí puede hacer esta conversión.

```raku
# say add('3', '4'); # Error
say '3' + '4'; # OK y es 7
```

%%tipblock
## Cómo saber si es un error de compilación
Si el mensaje de error empieza con `===SORRY!=== Error while compiling`, el error ocurrió en tiempo de compilación.
%%/tipblock

{% include nav.html %}
