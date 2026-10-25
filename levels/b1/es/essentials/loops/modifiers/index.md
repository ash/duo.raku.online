---
title: '`while` y `until` como modificadores de sentencia'
---

{% include menu.html %}

Tanto `while` como `until` pueden usarse como modificadores de declaraciones, [de la misma manera](/es/essentials/conditional-checks/modifiers) que `if` y `unless`.

Mira un ejemplo que imita la división de módulo, es decir, el cálculo del resto:

```raku
my $x = 10;
$x -= 3 while $x > 2;
say $x; # 1
```

Aquí, `-=` es un operador que hace la resta y la asignación a la vez. En este caso, `$x -= 3` es lo mismo que `$x = $x - 3`.

El modificador `while` repite la declaración `$x -= 3` mientras la condición `$x > 2` siga siendo `True`. Tan pronto como la condición se vuelve `False`, el bucle se detiene.

Observa que si la condición es `False` desde el principio, la declaración no se ejecuta en absoluto.

El mismo programa se puede escribir con `until`. Para ello, debes invertir la condición:

```raku
my $x = 10;
$x -= 3 until $x <= 2;
say $x; # 1
```

{% include nav.html %}
