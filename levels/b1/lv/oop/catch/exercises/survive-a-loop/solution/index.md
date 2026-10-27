---
title: 'Risinājums: Pārdzīvojiet ciklu'
translations_gpt:
---

{% include menu.html %}

Šeit ir viens iespējams risinājums.

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

1. Fāzeris `CATCH` apstrādā izņēmumu, kas tiek izmests cikla ķermeņa iekšā. Tāpēc `die` otrajā piegājienā tiek noķerts un nebeidz programmu.

1. Kad izņēmums ir apstrādāts, cikls vienkārši turpina ar nākamo vērtību. Tāpēc `ok: 3` tomēr tiek izdrukāts.

{% include nav.html %}
