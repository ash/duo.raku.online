---
title: 'Il phaser `CATCH`'
translations_gpt:
---

{% include menu.html %}

Il blocco `try` è comodo, ma tratta tutto il blocco come un'unica unità. Il blocco o funziona, o non funziona. Il phaser `CATCH` ti dà più controllo. Ti permette di gestire un'eccezione _dentro_ il blocco in cui è avvenuta. Poi decidi tu che cosa fare.

`CATCH` è un phaser, come quelli che hai visto nella [sezione sul flusso di controllo](/it/advanced/phasers). Puoi metterlo ovunque dentro un blocco. Gira solo se in quel blocco viene sollevata un'eccezione. Ricevi l'eccezione come variabile topic `$_`:

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

Il blocco `default` dentro `CATCH` gestisce qualunque eccezione. Dopo che è girato, l'eccezione conta come gestita. Quindi il programma non si ferma. Continua dopo il blocco che contiene il `CATCH`, ed è per questo che viene stampato `after`.

Senza il `CATCH`, il `die` chiuderebbe il programma prima di arrivare ad `after`.

{% include nav.html %}
