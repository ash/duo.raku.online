---
title: 'Решение: Создайте переменные всех возможных типов'
---

{% include menu.html %}

Наверное, такие программы вы не пишете в настоящей работе. Но нужно знать, как заглянуть внутрь настоящих программ.

## Код

Вот возможное решение. Оно создаёт переменные пяти типов из списка выше. Потом оно выводит их типы.

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

🦋 Найдите программу в файле [types.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/typed-variables/types.raku).

## Вывод

Программа выводит вот что:

```console
$ raku exercises/data-types/types.raku
10 (Int)
10.2 (Rat)
10000 (Num)
True (Bool)
ten (Str)
```

{% include nav.html %}
