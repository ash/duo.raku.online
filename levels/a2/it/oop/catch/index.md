---
title: 'Il phaser `CATCH`'
translations_gpt:
---

{% include menu.html %}

Il blocco `try` è facile da usare. Ma per `try` tutto il blocco è un solo pezzo. Il blocco o funziona, o fallisce. Il phaser `CATCH` ti dà più controllo. Un'eccezione è un errore che ferma il programma. Con `CATCH` gestisci l'eccezione _dentro_ il suo blocco. È il blocco con l'errore. Lì decidi tu che cosa fare.

`CATCH` è un phaser. Un phaser è un blocco speciale. Raku lo esegue da solo in un certo momento. Hai incontrato i phaser nella [sezione sul flusso di controllo](/it/advanced/phasers). Puoi mettere `CATCH` ovunque dentro un blocco. Gira solo se il codice di questo blocco solleva un'eccezione. Ricevi l'eccezione nella variabile topic `$_`:

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

Il programma stampa:

```
Caught: Boom!
after
```

Il blocco `default` dentro `CATCH` gestisce ogni eccezione. Quando ha finito, l'eccezione conta come gestita. Quindi il programma non si ferma. Va avanti dopo il blocco con il `CATCH`. Per questo il programma stampa `after`.

Senza il `CATCH`, il `die` ferma il programma. Il programma non arriva mai ad `after`.

{% include nav.html %}
