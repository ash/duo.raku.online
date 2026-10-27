---
title: "Soluzione: Indicate l'errore"
translations_gpt:
---

{% include menu.html %}

Ecco una possibile soluzione.

## Codice

```raku
sub risky {
    die 'sub failed';
}

{
    risky();

    CATCH {
        default {
            say .^name;
            say .message;
        }
    }
}
```

🦋 Trova il programma nel file [name-the-error.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/exception-objects/name-the-error.raku).

## Output

```
X::AdHoc
sub failed
```

## Commenti

1. Il `die` succede dentro `risky`, ma l'eccezione sale fino al chiamante. Il `CATCH` nel blocco che ha chiamato `risky` la gestisce. Di solito la gestione degli errori funziona così. Il fallimento e il suo gestore non devono per forza stare nella stessa routine.

1. Un semplice `die` con una stringa crea un'eccezione `X::AdHoc`, e `.^name` riferisce questo tipo. Poi `.message` restituisce il testo passato a `die`.

{% include nav.html %}
