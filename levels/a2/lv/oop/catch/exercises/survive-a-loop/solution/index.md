---
title: 'Risinājums: Pārdzīvojiet ciklu'
translations_gpt:
---

{% include menu.html %}

Šeit ir viens veids, kā atrisināt uzdevumu.

## Kods

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

🦋 Atrodiet programmu failā [survive-a-loop.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/catch/survive-a-loop.raku).

## Izvade

```
ok: 1
caught: bad: 2
ok: 3
```

## Komentāri

1. Fāzeris `CATCH` apstrādā izņēmumus no cikla ķermeņa. `die` otrajā piegājienā izmet izņēmumu. `CATCH` to noķer. Tāpēc kļūda nebeidz programmu.

1. `CATCH` apstrādā izņēmumu. Tad cikls vienkārši turpina ar nākamo vērtību. Tāpēc programma tomēr izdrukā `ok: 3`.

{% include nav.html %}
