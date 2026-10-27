---
title: Oggetti eccezione
translations_gpt:
---

{% include menu.html %}

Un'eccezione è un oggetto, proprio come ogni altro oggetto in Raku. Quando scrivi `die 'something failed'`, Raku mette il tuo messaggio dentro un oggetto eccezione. Questo oggetto ha il tipo `X::AdHoc`.

Dentro un `CATCH` puoi esaminare questo oggetto. Ottieni il suo tipo con `.^name` e il suo testo con `.message`:

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

Quando conosci il tipo, puoi trattare errori diversi in modi diversi. Le eccezioni incorporate di Raku hanno tipi propri, e i loro nomi cominciano con `X::`. Puoi confrontare questi tipi con `when`. Funziona proprio come confrontare valori in un blocco `given`/`when`:

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

Questo stampa `an ad-hoc error: something failed`. Questo perché l'eccezione corrisponde al tipo `X::AdHoc`. Confrontare il tipo è il modo di base per gestire errori specifici. La sezione sulle [eccezioni personalizzate](/it/oop/custom-exceptions) si basa su questa idea.

{% include nav.html %}
