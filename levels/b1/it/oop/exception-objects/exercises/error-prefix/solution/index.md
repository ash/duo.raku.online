---
title: 'Soluzione: Anteponete un prefisso al messaggio'
translations_gpt:
---

{% include menu.html %}

Ecco una possibile soluzione.

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

1. Il metodo `.message` dell'oggetto eccezione restituisce il testo dato a `die`.

1. Attaccarlo alla fine di `Error: ` dà la riga finale. L'oggetto eccezione è solo un valore. Quindi puoi usare il suo messaggio come preferisci.

{% include nav.html %}
