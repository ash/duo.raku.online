---
title: 'Розв''язання: Скористайтеся модулем статистики'
translations_gpt:
---

{% include menu.html %}

Ось один спосіб розв'язати задачу.

## Код

Програма `stats.raku`:

```raku
use Stats;

my @scores = 10, 20, 30, 40;

say "total: { total(@scores) }";
say "mean: { mean(@scores) }";
```

🦋 Обидва файли з вихідним кодом можна знайти в каталозі [exercises/advanced/modules-basics/stats-module](https://github.com/ash/raku-course/tree/master/exercises/advanced/modules-basics/stats-module).

## Вивід

```console
$ raku -I. stats.raku
total: 100
mean: 25
```

## Коментарі

1. Один `use Stats` приносить *обидві* експортовані підпрограми одразу. `use` імпортує все, що в модулі має `is export`. Він імпортує не лише одне ім'я.

1. `mean` викликає `total` усередині модуля. Щоб отримати середнє, програма сама не викликає `total`. Але все одно все працює. Підпрограми модуля можуть використовувати одна одну. Програма, яка їх викликає, бачить лише експортовані імена.

1. Чотири числа разом дають `100`. Тож середнє дорівнює `100 / 4`. Це `25`.

{% include nav.html %}
