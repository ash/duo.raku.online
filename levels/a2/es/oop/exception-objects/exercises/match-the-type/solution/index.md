---
title: 'Solución: Empareje el tipo'
translations_gpt:
---

{% include menu.html %}

Aquí tienes una forma de resolver la tarea.

## Código

```raku
{
    my $x = 1 / 0;
    say $x;

    CATCH {
        when X::Numeric::DivideByZero {
            say 'cannot divide by zero';
        }
    }
}
```

🦋 Puedes encontrar el código fuente en el archivo [match-the-type.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/exception-objects/match-the-type.raku).

## Salida

```
cannot divide by zero
```

## Comentarios

1. En Raku, `1 / 0` no provoca un fallo enseguida. Da un `Failure` perezoso. Un `Failure` es un valor con un error dentro. Espera hasta que lo usas. Raku lanza la excepción solo cuando *usamos* el valor. Aquí, intentamos hacer `say` con él.

1. La excepción lanzada tiene el tipo incorporado `X::Numeric::DivideByZero`. La rama `when X::Numeric::DivideByZero` coincide exactamente con este tipo. Aquí, comparas con un tipo concreto. No capturas todo con `default`. Así puedes manejar cada tipo de error a su manera.

{% include nav.html %}
