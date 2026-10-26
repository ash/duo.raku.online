---
title: 'Risinājums: Sakopt atstājot'
translations_gpt:
---

{% include menu.html %}

Šeit ir viens iespējams uzdevuma risinājums.

## Kods

```raku
sub work {
    LEAVE say 'Cleanup';

    say 'Working';
    return;
    say 'never reached';
}

work();
```

🦋 Atrodiet programmu failā [clean-up-on-leave.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/block-phasers/clean-up-on-leave.raku).

## Izvade

```
Working
Cleanup
```

## Komentāri

1. Pēc tam, kad `Working` ir izdrukāts, `return` uzreiz iziet no apakšprogrammas. Tāpēc `never reached` nekad netiek izdrukāts.

1. Ķermenis tika atstāts pirms laika. Tomēr fāzeris `LEAVE` pa ceļam uz āru izpildās un izdrukā `Cleanup`. Uz to jūs vienmēr varat paļauties. Tieši tāpēc `LEAVE` ir pareizā vieta resursu atbrīvošanai. Tas izpildās neatkarīgi no tā, kā bloks beidzas.

{% include nav.html %}
