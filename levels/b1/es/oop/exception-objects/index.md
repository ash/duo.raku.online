---
title: Objetos de excepción
translations_gpt:
---

{% include menu.html %}

Una excepción es un objeto, igual que cualquier otro objeto en Raku. Cuando escribes `die 'something failed'`, Raku pone tu mensaje dentro de un objeto de excepción. Este objeto tiene el tipo `X::AdHoc`.

Dentro de un `CATCH`, puedes examinar este objeto. Obtienes su tipo con `.^name` y su texto con `.message`:

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

Cuando conoces el tipo, puedes tratar errores distintos de formas distintas. Las excepciones incorporadas de Raku tienen sus propios tipos, y sus nombres empiezan por `X::`. Con `when`, puedes comparar con estos tipos. Funciona igual que comparar valores en un bloque `given`/`when`:

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

Esto imprime `an ad-hoc error: something failed`. Eso pasa porque la excepción coincidió con el tipo `X::AdHoc`. Comparar con el tipo es la forma básica de manejar errores concretos. La sección sobre [excepciones personalizadas](/es/oop/custom-exceptions) se basa en esta idea.

{% include nav.html %}
