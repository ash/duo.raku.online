---
title: 'Soluzione: Segnalate e recuperate'
translations_gpt:
---

{% include menu.html %}

Ecco una possibile soluzione.

## Codice

```raku
my $timeout = 30;

{
    die 'config missing';
    $timeout = 60;

    CATCH {
        default {
            say "warning: {.message}; keeping default";
        }
    }
}

say "timeout is $timeout seconds";
```

🦋 Trova il programma nel file [report-and-recover.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/catch/report-and-recover.raku).

## Output

```
warning: config missing; keeping default
timeout is 30 seconds
```

## Commenti

1. Quando il `die` solleva l'eccezione, il resto del blocco viene saltato. Quindi la riga `$timeout = 60` non gira mai, e `$timeout` tiene il suo valore predefinito `30`.

1. Il `CATCH` gestisce l'eccezione e stampa un avviso. Quindi il programma non si ferma e continua con il valore predefinito. È proprio questo che vuol dire *riprendersi* da un errore. Prendi nota del problema, passi a qualcosa di sicuro e continui.

{% include nav.html %}
