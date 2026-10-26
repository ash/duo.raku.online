---
title: 'Risinājums: Plānot divas pārbaudes'
translations_gpt:
---

{% include menu.html %}

Šeit ir viens veids, kā atrisināt uzdevumu.

## Kods

```raku
use Test;

plan 2;

my @sorted = (3, 1, 2).sort;
is-deeply @sorted, [1, 2, 3], 'sorted';

is 10 % 3, 1, 'remainder';
```

🦋 Atrodiet programmu failā [test-a-list.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/testing/test-a-list.raku).

## Izvade

```
1..2
ok 1 - sorted
ok 2 - remainder
```

## Komentāri

1. `plan 2` pasaka skaitu, pirms izpildās kāds tests. Tāpēc rinda `1..2` nāk pirmā. Varbūt fails izpilda citu pārbaužu skaitu. Tad visa testu kopa neizdodas. `done-testing` nevar jūs šādi pasargāt.

1. `is-deeply` pārbauda, vai abi saraksti ir pilnīgi vienādi, arī to tipi. `3, 1, 2` sakārtošana dod `1, 2, 3`. Tas sakrīt.

1. `is` pārbauda, vai divas vērtības ir vienādas. Ja tās nav vienādas, tas parāda abas vērtības. Šeit `10 % 3` ir `1`. Tā ir gaidītā vērtība. Tāpēc arī otrais tests izdodas.

{% include nav.html %}
