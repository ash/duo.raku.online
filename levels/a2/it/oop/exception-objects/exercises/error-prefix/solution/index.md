---
title: 'Soluzione: Anteponete un prefisso al messaggio'
translations_gpt:
---

{% include menu.html %}

Ecco un modo per risolvere il compito.

## Codice

```raku
{
    die 'timeout';

    CATCH {
        default {
            say 'Error: ' ~ .message;
        }
    }
}
```

🦋 Trova il programma nel file [error-prefix.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/exception-objects/error-prefix.raku).

## Output

```
Error: timeout
```

## Commenti

1. L'oggetto eccezione ha un metodo `.message`. Dà il testo che hai passato a `die`.

1. Mettiamo `Error: ` prima di questo testo. Così otteniamo la riga finale. L'oggetto eccezione è solo un valore. Quindi puoi usare il suo messaggio come vuoi.

{% include nav.html %}
