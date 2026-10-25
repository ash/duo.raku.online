---
title: 'Solution: Створення змінних усіх відомих типів'
---

{% include menu.html %}

Мабуть, у справжній роботі ви не пишете таких програм. Але ви повинні знати, як зазирнути всередину справжніх програм.

## Код

Ось можливе рішення. Воно створює змінні п'яти типів, названих вище. Потім воно виводить їхні типи.

```raku
my $a = 10;
my $b = 10.2;
my $c = 10e3;
my $d = True;
my $e = 'ten';

say $a, ' ', $a.WHAT;
say $b, ' ', $b.WHAT;
say $c, ' ', $c.WHAT;
say $d, ' ', $d.WHAT;
say $e, ' ', $e.WHAT;
```

🦋 Знайдіть програму у файлі [types.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/typed-variables/types.raku).

## Вивід

Програма виводить ось що:

```console
$ raku exercises/data-types/types.raku
10 (Int)
10.2 (Rat)
10000 (Num)
True (Bool)
ten (Str)
```

{% include nav.html %}
