---
title: 'Solvo: Prefiksu la mesaĝon'
translations_gpt:
---

{% include menu.html %}

Jen unu maniero solvi la taskon.

## Kodo

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

🦋 Vi povas trovi la fontkodon en la dosiero [error-prefix.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/exception-objects/error-prefix.raku).

## Eligo

```
Error: timeout
```

## Komentoj

1. La esceptobjekto havas metodon `.message`. Ĝi donas la tekston, kiun vi donis al `die`.

1. Ni metas `Error: ` antaŭ ĉi tiu teksto. Tio donas la finan linion. La esceptobjekto estas nur valoro. Do vi povas uzi ĝian mesaĝon kiel ajn vi volas.

{% include nav.html %}
