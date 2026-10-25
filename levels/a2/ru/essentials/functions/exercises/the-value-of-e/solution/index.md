---
title: 'Решение: Значение 𝑒'
---

{% include menu.html %}

## Отказ от ответственности

В Raku уже есть константа `e`. Она сразу даёт ответ на эту задачу. Решение ниже — только для обучения.

## Код

В формуле есть факториал. Мы уже знаем как минимум два способа найти факториал. Позже будут и другие способы. В программе ниже две функции. Одна функция находит факториал. Другая складывает первые элементы формулы.

Функция должна работать и без аргументов. Тогда цикл выполняется заданное число раз. Поэтому мы даём параметру [значение по умолчанию](/ru/essentials/functions/default-values): `sub e-approx($max = 100)`.

Посмотрите на код. Обе функции собирают свой результат похожим способом. В каждой есть [`for` в конце строки](/ru/essentials/loops/postfix-for). Этот цикл проходит по [диапазону](/ru/essentials/ranges).

Вот решение:

```raku
sub factorial($n) {
    my $f = 1;
    $f *= $_ for 1..$n;

    return $f;
}

sub e-approx($max = 100) {
    my $e = 1;
    $e += 1 / factorial($_) for 1..$max;

    return $e;
}

say e-approx(10);
say e-approx();
```

🦋 Найдите программу в файле [the-value-of-e.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/functions/the-value-of-e.raku).

## Вывод

Вот результаты для 10 и 100 проходов цикла. Попробуйте также другие значения `$max`.

```console
$ raku exercises/functions/the-value-of-e.raku
2.7182818
2.718281828459045
```

{% include nav.html %}
