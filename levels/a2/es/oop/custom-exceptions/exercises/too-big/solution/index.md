---
title: 'Solución: Demasiado grande'
translations_gpt:
---

{% include menu.html %}

Aquí tienes una forma de resolver la tarea.

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

1. `TooBig is Exception` convierte la clase en una excepción. Puedes lanzarla. Guarda dos datos, `value` y `limit`. Su método `message` pone los dos en el texto.

1. `.throw` lanza la excepción. `when TooBig` coincide con ella por su tipo. El código de `when TooBig` es el manejador. Hace algo más que imprimir el mensaje. También lee el atributo `limit` del objeto capturado. Con él, el manejador da una pista útil. Por eso una excepción personalizada es mejor que una simple cadena. El manejador recibe los datos en una forma clara. Puede actuar con estos datos.

1. El código lanza la excepción **solo** cuando `$value > $limit`. Para `30`, no hay excepción. El cuerpo del bucle se ejecuta hasta el final. Su `say` imprime que el valor está dentro del límite. Para `99` y `60`, se ejecuta el `throw`. Así que el programa salta ese `say`. El `CATCH` maneja la excepción en su lugar. Aquí, el `CATCH` está justo en el cuerpo del bucle `for`. Así que una excepción capturada termina solo la vuelta actual. Después el bucle simplemente pasa al valor siguiente.

{% include nav.html %}
