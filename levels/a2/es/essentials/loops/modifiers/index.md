---
title: '`while` y `until` como modificadores de sentencia'
---

{% include menu.html %}

También puedes escribir `while` y `until` después de una declaración. Esta forma se llama modificador de declaración. Funciona [igual que](/es/essentials/conditional-checks/modifiers) `if` y `unless` después de una declaración.

Aquí tienes un ejemplo. Calcula el resto de una división:

```raku
my $x = 10;
$x -= 3 while $x > 2;
say $x; # 1
```

Aquí, `-=` es un operador. Resta y asigna al mismo tiempo. Así, `$x -= 3` significa lo mismo que `$x = $x - 3`.

El modificador `while` repite la declaración `$x -= 3`. La repite mientras la condición `$x > 2` es `True`. Cuando la condición se vuelve `False`, el bucle se detiene.

Si la condición es `False` al principio, la declaración no se ejecuta ni una vez.

Puedes escribir el mismo programa con `until`. Para esto, debes usar la condición contraria:

```raku
my $x = 10;
$x -= 3 until $x <= 2;
say $x; # 1
```

{% include nav.html %}
