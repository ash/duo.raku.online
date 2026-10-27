---
title: 'El phaser `CATCH`'
translations_gpt:
---

{% include menu.html %}

El bloque `try` es fácil de usar. Pero para `try`, todo el bloque es una sola pieza. El bloque funciona o falla. El phaser `CATCH` te da más control. Una excepción es un error que detiene el programa. Con `CATCH`, manejas la excepción _dentro_ de su bloque. Este es el bloque con el error. Allí decides qué hacer.

`CATCH` es un phaser. Un phaser es un bloque especial. Raku lo ejecuta por sí mismo en un momento concreto. Ya conociste los phasers en la [sección sobre el flujo de control](/es/advanced/phasers). Puedes poner `CATCH` en cualquier lugar dentro de un bloque. Solo se ejecuta si el código de este bloque lanza una excepción. Recibes la excepción en la variable de tema `$_`:

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

El bloque `default` dentro de `CATCH` maneja cualquier excepción. Cuando termina, la excepción cuenta como manejada. Así que el programa no se detiene. Sigue después del bloque con el `CATCH`. Por eso el programa imprime `after`.

Sin el `CATCH`, el `die` detiene el programa. El programa nunca llega a `after`.

{% include nav.html %}
