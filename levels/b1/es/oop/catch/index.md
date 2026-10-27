---
title: 'El phaser `CATCH`'
translations_gpt:
---

{% include menu.html %}

El bloque `try` es cómodo, pero trata todo el bloque como una sola unidad. El bloque o funciona o no funciona. El phaser `CATCH` te da más control. Te permite manejar una excepción _dentro_ del bloque donde ocurrió. Después decides qué hacer.

`CATCH` es un phaser, como los que viste en la [sección sobre el flujo de control](/es/advanced/phasers). Puedes ponerlo en cualquier lugar dentro de un bloque. Solo se ejecuta si se lanza una excepción en ese bloque. Recibes la excepción como la variable de tema `$_`:

```raku
{
    die 'Boom!';

    CATCH {
        default {
            say 'Caught: ' ~ .message;
        }
    }
}

say 'after';
```

El programa imprime:

```
Caught: Boom!
after
```

El bloque `default` dentro de `CATCH` maneja cualquier excepción. Después de que se ha ejecutado, la excepción cuenta como manejada. Así que el programa no se detiene. Continúa después del bloque que rodea al `CATCH`, y por eso se imprime `after`.

Sin el `CATCH`, el `die` terminaría el programa antes de llegar a `after`.

{% include nav.html %}
