---
title: 'Risinājums: Plānot divas pārbaudes'
translations_gpt:
---

{% include menu.html %}

Šeit ir viens iespējams risinājums.

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

1. `plan 2` pasaka skaitu, pirms izpildās kāds tests, tāpēc rinda `1..2` nāk pirmā. Ja fails pēc tam izpildītu citu pārbaužu skaitu, testu kopa neizdotos. `done-testing` nevar jums dot šo aizsardzību.

1. `is-deeply` pārbauda, vai abi saraksti ir pilnīgi vienādi, ieskaitot to tipus. `3, 1, 2` sakārtošana dod `1, 2, 3`, kas sakrīt.

1. `is` pārbauda, vai divas vērtības ir vienkārši vienādas. Ja tests neizdodas, tas parāda abas vērtības. Šeit `10 % 3` ir `1`, kas ir gaidītā vērtība. Tāpēc arī otrais tests izdodas.

{% include nav.html %}
