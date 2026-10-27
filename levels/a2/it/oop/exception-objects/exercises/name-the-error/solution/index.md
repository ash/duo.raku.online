---
title: "Soluzione: Indicate l'errore"
translations_gpt:
---

{% include menu.html %}

Ecco un modo per risolvere il compito.

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

1. Il `die` succede dentro `risky`. Ma l'eccezione sale fino al chiamante. Il chiamante è il codice che ha chiamato `risky`. Qui è il blocco. Il `CATCH` in questo blocco gestisce l'eccezione. Di solito la gestione degli errori funziona così. Il codice che gestisce un errore è il suo gestore. L'errore e il suo gestore possono stare in routine diverse.

1. Un semplice `die` con una stringa crea un'eccezione `X::AdHoc`. `.^name` mostra questo tipo. `.message` restituisce il testo che abbiamo dato a `die`.

{% include nav.html %}
