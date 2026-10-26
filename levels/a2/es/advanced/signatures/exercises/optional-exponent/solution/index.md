---
title: 'Solution: Un exponente opcional'
---

{% include menu.html %}

Aquí tienes una forma de resolver la tarea.

## Código

```raku
sub power($base, $exp?) {
    $base ** ($exp // 2)
}

say power(5);
say power(5, 3);
```

🦋 Encuentra el programa en el archivo [optional-exponent.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/signatures/optional-exponent.raku).

## Salida

```
25
125
```

## Comentarios

1. El `?` después de `$exp` lo hace opcional. Así que puedes llamar a `power` solo con la base.

1. Si dejas fuera `$exp`, está indefinido. Entonces `//` da el valor `2`. Así que `power(5)` eleva la base al cuadrado y obtiene `25`. Ahora mira `power(5, 3)`. Aquí sí hay exponente. Así que el código lo usa y obtiene `125`.

{% include nav.html %}
