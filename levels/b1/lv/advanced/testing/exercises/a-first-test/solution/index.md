---
title: 'Risinājums: Pirmais tests'
translations_gpt:
---

{% include menu.html %}

Šeit ir viens iespējams risinājums.

## Kods

```raku
use Test;

ok 'Raku'.chars == 4, 'Raku has four letters';

done-testing;
```

🦋 Atrodiet programmu failā [a-first-test.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/testing/a-first-test.raku).

## Izvade

```
ok 1 - Raku has four letters
1..1
```

## Komentāri

1. `ok` izdodas, jo nosacījums `'Raku'.chars == 4` ir patiess.

1. `done-testing` izdrukā plāna rindu `1..1`, kas pasaka, ka izpildījās viens tests.

{% include nav.html %}
