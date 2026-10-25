---
title: '`while` y `until` como modificadores de sentencia'
---

{% include menu.html %}

También puedes poner `while` o `until` después de una declaración. Lo llamamos modificador de declaración. Ya lo conoces [de `if` y `unless`](/es/essentials/conditional-checks/modifiers).

Aquí tienes un ejemplo. Calcula el resto, o lo que queda después de dividir:

```raku
my $x = 10;
$x -= 3 while $x > 2;
say $x; # 1
```

Aquí, `-=` es un operador. Hace dos cosas. Resta un número. También guarda el resultado en la variable. Así, `$x -= 3` es lo mismo que `$x = $x - 3`.

El modificador `while` repite la declaración `$x -= 3`. La repite mientras `$x > 2` es `True`. Cuando `$x > 2` es `False`, el bucle se detiene.

Si la condición es `False` al principio, la declaración nunca se ejecuta.

Puedes escribir el mismo programa con `until`. Entonces necesitas la condición contraria:

```raku
my $x = 10;
$x -= 3 until $x <= 2;
say $x; # 1
```

{% include nav.html %}
