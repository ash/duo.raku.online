---
title: Parámetros tipados
---

{% include menu.html %}

En Raku, un parámetro de función puede tener un tipo. Entonces solo acepta valores de este tipo. Esto es muy parecido a las [variables tipadas](/es/essentials/typed-variables/type-constraints/).

```raku
sub add(Int $x, Int $y) { $x + $y }
```

Ahora los argumentos de la función deben ser enteros.

```raku
say add(10, 20);
# say add(pi, e); # Error
```

Solo puedes pasar valores `Int`. Cualquier otro tipo da un error de compilación. Este error aparece antes de ejecutar el programa.

```
$ raku t.raku
===SORRY!=== Error while compiling t.raku
Calling add(Num, Num) will never work with declared signature (Int $x, Int $y)
at t.raku:5
------> say ⏏add(pi, e);
```

Nota que aquí Raku no convierte los tipos por ti. En otros casos, esta conversión es posible.

```raku
# say add('3', '4'); # Error
say '3' + '4'; # OK y es 7
```

%%tipblock
## ¿Es un error de compilación?
Mira el principio del mensaje de error. ¿Es `===SORRY!=== Error while compiling`? Entonces el error ocurrió en tiempo de compilación.
%%/tipblock

{% include nav.html %}
