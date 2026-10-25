---
title: 'Solution: Създаване на променливи от всички известни типове'
---

{% include menu.html %}

Вероятно няма да пишете такива програми в истинската си работа. Но трябва да знаете как да гледате вътре в реалните програми.

## Код

Ето едно възможно решение. То създава променливи от петте типа по-горе. След това отпечатва техните типове.

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

🦋 Намерете програмата във файла [types.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/typed-variables/types.raku).

## Изход

Програмата отпечатва това:

```console
$ raku exercises/data-types/types.raku
10 (Int)
10.2 (Rat)
10000 (Num)
True (Bool)
ten (Str)
```

{% include nav.html %}
