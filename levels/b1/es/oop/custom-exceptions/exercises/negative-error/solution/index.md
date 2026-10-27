---
title: 'Solución: Un error de número negativo'
translations_gpt:
---

{% include menu.html %}

Aquí tienes una posible solución.

## Código

```raku
class Negative is Exception {
    has $.n;

    method message {
        "$.n is negative";
    }
}

sub check($n) {
    Negative.new(n => $n).throw if $n < 0;
    return $n;
}

{
    say check(-5);

    CATCH {
        when Negative {
            say .message;
        }
    }
}

Negative.new(n => -10).throw;
```

🦋 Puedes encontrar el código fuente en el archivo [negative-error.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/custom-exceptions/negative-error.raku).

## Salida

```
-5 is negative
-10 is negative
  in block <unit> at negative-error.raku line 24
```

## Comentarios

1. `Negative is Exception` hace posible lanzar la clase. Su método `message` construye el texto a partir del atributo `n`.

1. `check` comprueba su entrada y lanza la excepción personalizada para un número negativo. La excepción sale de `check` y llega al `CATCH` del bloque que llama a `check`. Allí, `when Negative` coincide con ella por su tipo e imprime el mensaje. Este es un uso muy común y real de las excepciones personalizadas. El código comprueba su entrada e informa de los valores malos con una excepción de su propio tipo.

1. ¿Por qué hay unas `{ … }` alrededor de la llamada? Un phaser `CATCH` maneja solo las excepciones lanzadas en **el bloque que lo contiene**. El bloque junta el arriesgado `check(-5)` con el `CATCH` que lo vigila. Así que la excepción se captura justo aquí, y el programa continúa justo después del bloque. Sin el bloque, el `CATCH` vigilaría en cambio todo el programa. Capturaría la excepción, pero después el programa simplemente terminaría. No habría ningún lugar natural donde seguir.

1. El `Negative.new(n => -10).throw` final muestra la otra cara de esto. Está **fuera** del bloque, así que nada lo captura. La excepción sube hasta arriba del todo, y el programa muere. Imprime el mensaje y una traza en el error estándar. Después termina con un estado distinto de cero. Esto es lo que le pasa a cualquier excepción que no capturas. Y por eso exactamente el primer lanzamiento necesitaba un `CATCH` para sobrevivir.

{% include nav.html %}
