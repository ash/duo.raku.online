---
title: 'Решение: Функция для вычисления _xʸ_'
---

{% include menu.html %}

В этой программе используйте оператор `**`. Он вычисляет степень.

## Код

Вот решение:

```raku
sub f($x, $y) { $x ** $y }

say f(5, 3);
say f(2, 10);
say f(-4, 5);
```

🦋 Найдите программу в файле [function-x-to-the-power-of-y.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/functions/function-x-to-the-power-of-y.raku).

## Вывод

Запустите программу. Проверьте, что ответы правильные:

```console
$ raku exercises/functions/function-x-to-the-power-of-y.raku
125
1024
-1024
```

## Комментарий

Функция работает и с отрицательными степенями. Например:

```raku
say f(5, -1);  # 0.2
say f(10, -2); # 0.01
```

{% include nav.html %}
