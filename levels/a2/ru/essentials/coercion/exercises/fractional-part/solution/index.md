---
title: 'Решение: Дробная часть'
---

{% include menu.html %}

Как получить дробную часть числа? Отнимите от него целую часть. Чтобы получить целую часть, преобразуйте число в `Int`.

## Код

Вот одно из решений:

```raku
my $n = 15.8972;
say $n - $n.Int;
```

🦋 Найдите программу в файле [fractional-part.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/coercion/fractional-part.raku).

## Вывод

```console
$ raku exercises/coercion/fractional-part.raku
0.8972
```

## Комментарий

Попробуйте программу и с отрицательными числами. Например:

```raku
my $n = -15.8972;
say $n - $n.Int;
```

Здесь результат тоже правильный:

```console
$ raku exercises/coercion/fractional-part.raku
-0.8972
```

{% include nav.html %}
