---
title: 'Soluzione: Segnalate e recuperate'
translations_gpt:
---

{% include menu.html %}

Ecco un modo per risolvere il compito.

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

1. Il `die` solleva un'eccezione. Poi Raku salta il resto del blocco. Quindi la riga `$timeout = 60` non gira mai. `$timeout` tiene il suo valore predefinito, `30`.

1. Il `CATCH` gestisce l'eccezione. Stampa un avviso. Quindi il programma non si ferma. Va avanti con il valore predefinito. Questo vuol dire *riprendersi* da un errore. Prendi nota del problema. Al suo posto usi qualcosa di sicuro. Poi vai avanti.

{% include nav.html %}
