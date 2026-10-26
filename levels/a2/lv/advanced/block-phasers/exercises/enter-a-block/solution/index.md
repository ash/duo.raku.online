---
title: 'Risinājums: Ieiet blokā'
translations_gpt:
---

{% include menu.html %}

Šeit ir viens veids, kā atrisināt uzdevumu.

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

1. `ENTER` izpildās katru reizi, kad programma ieiet blokā. Tas izpildās tieši pirms ķermeņa. Cikls ieiet savā ķermenī vienu reizi katrā kārtā. Tāpēc programma izdrukā `--entering` pirms katras `body` rindas.

1. Tāda ir atšķirība starp `ENTER` un `FIRST`. Ar `FIRST` kods izpildās tikai vienreiz visam ciklam. `ENTER` izpildās katru reizi, kad programma ieiet blokā.

{% include nav.html %}
