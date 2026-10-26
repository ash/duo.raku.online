---
title: 'Solution: Coincidir por tipo'
---

{% include menu.html %}

Aquí tienes una forma de resolver la tarea.

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

1. A veces `when` tiene un tipo. Entonces la coincidencia inteligente comprueba si el tópico *tiene este tipo*. `3.14` no es un `Int`. Así que Raku salta el primer `when`.

1. En Raku, un número con punto decimal, como `3.14`, es un `Rat`. Un `Rat` es un número racional, o una fracción. Así que el segundo `when` coincide. El programa imprime `rational`.

{% include nav.html %}
