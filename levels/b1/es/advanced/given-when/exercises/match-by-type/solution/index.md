---
title: 'Solution: Coincidir por tipo'
---

{% include menu.html %}

Aquí tienes una posible solución.

## Código

```raku
my $value = 3.14;

given $value {
    when Int { say 'integer' }
    when Rat { say 'rational' }
    when Str { say 'string' }
}
```

🦋 Encuentra el programa en el archivo [match-by-type.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/given-when/match-by-type.raku).

## Salida

```
rational
```

## Comentarios

1. Aquí el valor para comparar es un tipo. Entonces la coincidencia inteligente comprueba si el tópico *es de ese tipo*. `3.14` no es un `Int`, así que el primer `when` se salta.

1. En Raku, un número decimal como `3.14` es un `Rat`, un número racional. Así que el segundo `when` coincide, y el programa imprime `rational`.

{% include nav.html %}
