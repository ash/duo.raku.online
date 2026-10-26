---
title: 'Розв''язання: Скористайтеся модулем статистики'
translations_gpt:
---

{% include menu.html %}

Ось один із можливих розв'язків.

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

1. Один-єдиний `use Stats` приносить *обидві* експортовані підпрограми одразу. `use` імпортує все, що модуль позначає `is export`, а не лише одне ім'я.

1. `mean` викликає `total` усередині модуля. Щоб отримати середнє, програма сама не викликає `total`, але все одно все працює. Підпрограми модуля можуть залежати одна від одної. Код, який їх викликає, бачить лише експортовані імена.

1. Чотири числа в сумі дають `100`, тож середнє дорівнює `100 / 4`, тобто `25`.

{% include nav.html %}
