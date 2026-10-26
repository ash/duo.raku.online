---
title: 'Risinājums: Ieiet blokā'
translations_gpt:
---

{% include menu.html %}

Šeit ir viens iespējams uzdevuma risinājums.

## Kods

```raku
for 1..2 {
    ENTER say '--entering';
    say "body $_";
}
```

🦋 Atrodiet programmu failā [enter-a-block.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/block-phasers/enter-a-block.raku).

## Izvade

```
--entering
body 1
--entering
body 2
```

## Komentāri

1. `ENTER` izpildās katru reizi, kad programma ieiet blokā, tieši pirms tā ķermeņa. Cikls ieiet savā ķermenī vienu reizi katrā piegājienā. Tāpēc `--entering` tiek izdrukāts pirms katras `body` rindas.

1. Tāda ir atšķirība starp `ENTER` un `FIRST`. `FIRST` izpildītos tikai vienreiz visam ciklam. Bet `ENTER` izpildās katru reizi, kad programma ieiet blokā.

{% include nav.html %}
