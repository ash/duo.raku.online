---
title: 'Risinājums: Sakopt atstājot'
translations_gpt:
---

{% include menu.html %}

Šeit ir viens veids, kā atrisināt uzdevumu.

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

1. Vispirms programma izdrukā `Working`. Tad `return` uzreiz iziet no apakšprogrammas. Tāpēc programma nekad neizdrukā `never reached`.

1. Ķermenis beidzas pirms laika. Bet fāzeris `LEAVE` tomēr izpildās pa ceļam uz āru. Tas izdrukā `Cleanup`. Par to jūs vienmēr varat būt droši. Tāpēc `LEAVE` ir pareizā vieta resursu atbrīvošanai. Tas izpildās vienmēr, lai kā bloks beigtos.

{% include nav.html %}
