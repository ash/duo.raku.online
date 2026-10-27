---
title: 'Risinājums: Apstrādājiet un turpiniet'
translations_gpt:
---

{% include menu.html %}

Šeit ir viens veids, kā atrisināt uzdevumu.

## Kods

```raku
for <ok bad ok> -> $item {
    {
        die 'boom' if $item eq 'bad';
        say "processed $item";

        CATCH {
            default {
                say "skipped ($item): {.message}";
            }
        }
    }
}
```

🦋 Atrodiet programmu failā [handle-and-continue.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/catch/handle-and-continue.raku).

## Izvade

```
processed ok
skipped (bad): boom
processed ok
```

## Komentāri

1. Fāzeris `CATCH` atrodas viena elementa blokā. Tāpēc tas apstrādā `die` tikai šim elementam. `CATCH` apstrādā izņēmumu turpat. Tāpēc izņēmums nekad netiek ārā no bloka. Tas nevar apturēt visu ciklu.

1. Šādos gadījumos parasti lieto `CATCH`, nevis `try`. Viens cikla piegājiens neizdodas. Programma apstrādā kļūdu turpat. Tad cikls turpina ar nākamo elementu. Vidējais elements neizdodas. Bet programma tomēr apstrādā abus `ok` elementus.

{% include nav.html %}
