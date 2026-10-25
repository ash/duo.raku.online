---
title: Conversión de tipos para variables tipadas
---

{% include menu.html %}

Las restricciones de tipo son reglas para los tipos de las variables. Estas reglas son bastante estrictas. Por ejemplo, toma una variable con el tipo `Int`. No puedes asignarle un valor `Num`. Esto es así incluso si el valor es un número entero:

```raku
my Int $x = 42;
# $x = 42e1; # Error
```

Para convertir el valor, usa [uno de los métodos](/es/essentials/coercion/#topics-in-this-section).

```raku
my Int $x = 42;
$x = 42e1.Int;
$x = Int(42e1);
```

{% include nav.html %}
