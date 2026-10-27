---
title: 'Soluzione: Sopravvivete a un ciclo'
translations_gpt:
---

{% include menu.html %}

Ecco una possibile soluzione.

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

1. Il phaser `CATCH` gestisce un'eccezione sollevata dentro il corpo del ciclo. Quindi il `die` nel secondo giro viene intercettato e non chiude il programma.

1. Una volta gestita l'eccezione, il ciclo va semplicemente avanti con il valore successivo. Per questo `ok: 3` viene comunque stampato.

{% include nav.html %}
