---
title: 'Risinājums: Apstrādājiet un turpiniet'
translations_gpt:
---

{% include menu.html %}

Šeit ir viens iespējams risinājums.

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

1. Fāzeris `CATCH` atrodas blokā, kas izpildās katram elementam. Tāpēc tas apstrādā `die` tikai šim vienam elementam. Izņēmums tiek apstrādāts turpat, tāpēc tas nekad netiek ārā un neaptur visu ciklu.

1. Šis ir tipisks gadījums, kad `CATCH` ir labāks par `try`. Kļūda vienā cikla piegājienā tiek apstrādāta turpat, kur tā notiek. Tad cikls pāriet uz nākamo elementu. Vidējais elements neizdodas, bet abi `ok` elementi tomēr tiek apstrādāti.

{% include nav.html %}
