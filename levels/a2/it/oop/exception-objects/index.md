---
title: Oggetti eccezione
translations_gpt:
---

{% include menu.html %}

Un'eccezione descrive un errore nel programma. In Raku è un oggetto, come ogni altro oggetto. Scrivi `die 'something failed'`. Allora Raku mette il tuo messaggio in un oggetto eccezione. Il tipo di questo oggetto è `X::AdHoc`.

Un blocco `CATCH` intercetta l'eccezione. Dentro il blocco puoi guardare questo oggetto. `.^name` dà il suo tipo. `.message` dà il suo testo:

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

Il tipo è utile. Con il tipo puoi trattare ogni errore a modo suo. Ogni eccezione incorporata di Raku ha il suo tipo. I nomi di questi tipi cominciano con `X::`. Puoi confrontare questi tipi con `when`. Hai fatto lo stesso con i valori in un blocco `given`/`when`:

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

Questo stampa `an ad-hoc error: something failed`. Succede perché l'eccezione corrisponde al tipo `X::AdHoc`. Per gestire un certo genere di errore, confronti il suo tipo. Questa è l'idea di base. La sezione sulle [eccezioni personalizzate](/it/oop/custom-exceptions) parte da questa idea.

{% include nav.html %}
