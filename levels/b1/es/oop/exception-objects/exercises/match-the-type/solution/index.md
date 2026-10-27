---
title: 'Solución: Empareje el tipo'
translations_gpt:
---

{% include menu.html %}

Aquí tienes una posible solución.

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

1. En Raku, `1 / 0` no falla enseguida. En su lugar, da un `Failure` perezoso, que espera hasta que se usa. La excepción se lanza solo cuando *usamos* el valor. Aquí, esto pasa cuando intentamos hacer `say` con él.

1. La excepción lanzada tiene el tipo incorporado `X::Numeric::DivideByZero`. La rama `when X::Numeric::DivideByZero` coincide exactamente con ese tipo. Aquí, comparas con un tipo concreto en lugar de capturar todo con `default`. Esto te permite manejar errores distintos de formas distintas.

{% include nav.html %}
