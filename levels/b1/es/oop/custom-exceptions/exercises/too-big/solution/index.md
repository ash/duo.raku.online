---
title: 'Solución: Demasiado grande'
translations_gpt:
---

{% include menu.html %}

Aquí tienes una posible solución.

## Código

```raku
class TooBig is Exception {
    has $.value;
    has $.limit;

    method message {
        "Value $.value exceeds the limit of $.limit";
    }
}

my $limit = 50;

for 30, 99, 60 -> $value {
    TooBig.new(value => $value, limit => $limit).throw if $value > $limit;
    say "Value $value is within the limit";

    CATCH {
        when TooBig {
            say .message;
            say "Try a value up to {.limit}.";
        }
    }
}
```

🦋 Puedes encontrar el código fuente en el archivo [too-big.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/custom-exceptions/too-big.raku).

## Salida

```
Value 30 is within the limit
Value 99 exceeds the limit of 50
Try a value up to 50.
Value 60 exceeds the limit of 50
Try a value up to 50.
```

## Comentarios

1. `TooBig is Exception` convierte la clase en una excepción que puedes lanzar. Lleva dos datos, `value` y `limit`. Su método `message` pone los dos en el texto que muestra.

1. `.throw` lanza la excepción, y `when TooBig` coincide con ella por su tipo. El manejador hace algo más que imprimir el mensaje. Lee el atributo `limit` directamente del objeto capturado para dar una pista útil. Por eso una excepción personalizada es mejor que una simple cadena. El manejador recibe datos con una estructura clara, con los que puede actuar.

1. La excepción se lanza **solo** cuando `$value > $limit`. Para `30`, no hay excepción, y el cuerpo del bucle llega hasta su `say`. Este `say` imprime que el valor está dentro del límite. Para `99` y `60`, se ejecuta el `throw`, así que ese `say` se salta. El `CATCH` maneja la excepción en su lugar. El cuerpo del `for` es en sí mismo el bloque que el `CATCH` vigila. Así que una excepción capturada termina solo la vuelta actual. Después el bucle simplemente pasa al valor siguiente.

{% include nav.html %}
