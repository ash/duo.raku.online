---
title: '`while` y `until` como modificadores de sentencia'
---

{% include menu.html %}

También puedes usar `while` y `until` como modificadores de declaración, es decir, después de una declaración. Esto funciona [de la misma manera](/es/essentials/conditional-checks/modifiers) que con `if` y `unless`.

Aquí tienes un ejemplo que funciona como la división de módulo, es decir, calcula el resto:

```raku
my $x = 10;
$x -= 3 while $x > 2;
say $x; # 1
```

Aquí, `-=` es un operador que resta y asigna en un solo paso. Así, `$x -= 3` significa lo mismo que `$x = $x - 3`.

El modificador `while` repite `$x -= 3` mientras la condición `$x > 2` sea `True`. Cuando se vuelve `False`, el bucle se detiene.

Observa que si la condición es `False` desde el principio, la declaración nunca se ejecuta.

El mismo programa puede usar `until`, pero entonces hay que invertir la condición:

```raku
my $x = 10;
$x -= 3 until $x <= 2;
say $x; # 1
```

{% include nav.html %}
