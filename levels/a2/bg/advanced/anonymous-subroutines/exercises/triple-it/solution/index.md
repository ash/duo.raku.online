---
title: 'Solution: Утройте го'
translations_gpt:
---

{% include menu.html %}

Ето един начин да решите задачата.

## Код

```raku
my $factor = 3;
my $scale = -> $x { $x * $factor };

say $scale(7);
```

🦋 Можете да намерите изходния код във файла [triple-it.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/anonymous-subroutines/triple-it.raku).

## Изход

```
21
```

## Коментари

1. Стрелковият блок има само един параметър, `$x`. Но той използва и `$factor`. Тази променлива идва от кода около блока. Блок, който пази такива променливи, е затваряне.

1. `$factor` е `3`, затова `$scale(7)` дава `21`. Сега променете `$factor`. Тогава същият блок използва новата стойност:

```raku
$factor = 5;
say $scale(7); # 35
```

Затварянето пази самата *променлива*. То не пази старата стойност на променливата. Затова по-късното извикване вижда новия `$factor`. То връща `35`.

{% include nav.html %}
