---
title: 'Solución: Un error de número negativo'
translations_gpt:
---

{% include menu.html %}

Aquí tienes una forma de resolver la tarea.

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

1. `Negative is Exception` te permite lanzar esta clase. Su método `message` crea el texto con el atributo `n`.

1. `check` comprueba su entrada. Para un número negativo, lanza la excepción personalizada. La excepción sale de `check`. Va al `CATCH` del bloque que llamó a `check`. Allí, `when Negative` coincide con ella por su tipo. Después el `CATCH` imprime el mensaje. Este es un uso muy común y real de las excepciones personalizadas. Un programa comprueba su entrada. Para un valor malo, lanza una excepción de su propio tipo.

1. ¿Por qué hay unas `{ … }` alrededor de la llamada? Un phaser `CATCH` maneja solo las excepciones de **su propio bloque**. Este es el bloque que tiene el `CATCH` dentro. Aquí, el bloque contiene la llamada `check(-5)` junto con su `CATCH`. La llamada puede fallar, y el `CATCH` está ahí para eso. Así que la excepción se captura justo aquí. Luego el programa sigue justo después del bloque. ¿Y si no hay bloque? Entonces el `CATCH` funciona para todo el programa. Captura la excepción. Pero después el programa simplemente termina. No hay un buen lugar para seguir.

1. La última línea, `Negative.new(n => -10).throw`, muestra el caso contrario. Esta línea está **fuera** del bloque. Así que nada captura la excepción. La excepción sube hasta arriba del todo. Entonces el programa muere, es decir, se detiene con un error. Imprime el mensaje en el error estándar. También imprime ahí una traza. Una traza muestra en qué lugar del código pasó el error. Después el programa termina con un código de salida distinto de `0`. Esto le pasa a cada excepción que no capturas. Y por eso el primer lanzamiento necesitaba un `CATCH`. Sin él, el programa no puede seguir.

{% include nav.html %}
