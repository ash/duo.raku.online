---
title: 'Soluzione: Sopravvivete a un ciclo'
translations_gpt:
---

{% include menu.html %}

Ecco un modo per risolvere il compito.

## Codice

```raku
for 1, 2, 3 -> $n {
    if $n == 2 {
        die "bad: $n";
    }
    say "ok: $n";

    CATCH {
        default {
            say "caught: " ~ .message;
        }
    }
}
```

🦋 Trova il programma nel file [survive-a-loop.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/catch/survive-a-loop.raku).

## Output

```
ok: 1
caught: bad: 2
ok: 3
```

## Commenti

1. Il phaser `CATCH` gestisce le eccezioni del corpo del ciclo. Il `die` nel secondo giro ne solleva una. `CATCH` la intercetta. Quindi l'errore non chiude il programma.

1. `CATCH` gestisce l'eccezione. Poi il ciclo va semplicemente avanti con il valore successivo. Per questo il programma stampa comunque `ok: 3`.

{% include nav.html %}
