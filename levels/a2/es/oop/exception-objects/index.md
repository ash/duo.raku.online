---
title: Objetos de excepción
translations_gpt:
---

{% include menu.html %}

Una excepción describe un error en el programa. En Raku, es un objeto, como cualquier otro objeto. Escribes `die 'something failed'`. Entonces Raku pone tu mensaje en un objeto de excepción. El tipo de este objeto es `X::AdHoc`.

Un bloque `CATCH` captura la excepción. Dentro de él, puedes mirar este objeto. `.^name` da su tipo. `.message` da su texto:

```raku
{
    die 'something failed';

    CATCH {
        default {
            say .^name;   # X::AdHoc
            say .message; # something failed
        }
    }
}
```

El tipo es útil. Con él, puedes tratar cada error a su manera. Cada excepción incorporada de Raku tiene su propio tipo. Los nombres de estos tipos empiezan por `X::`. Con `when`, puedes comparar con estos tipos. Hiciste lo mismo con valores en un bloque `given`/`when`:

```raku
{
    die 'something failed';

    CATCH {
        when X::AdHoc {
            say 'an ad-hoc error: ' ~ .message;
        }
        default {
            say 'some other error';
        }
    }
}
```

Esto imprime `an ad-hoc error: something failed`. Pasa porque la excepción coincide con el tipo `X::AdHoc`. Para manejar una clase concreta de error, comparas con su tipo. Esta es la idea básica. La sección sobre [excepciones personalizadas](/es/oop/custom-exceptions) se basa en ella.

{% include nav.html %}
