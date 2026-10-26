---
title: 'Решение: Скидка по умолчанию'
---

{% include menu.html %}

Вот одно возможное решение задачи.

## Код

```raku
my $discount is default(0);
say $discount;

$discount = 15;
say $discount;
```

🦋 Исходный код можно найти в файле [default-discount.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/scalar-containers/default-discount.raku).

Конечно, проще было бы сразу дать переменной значение `0`:

```raku
my $discount = 0;
say $discount;

$discount = 15;
say $discount;
```

## Вывод

```
0
15
```

## Комментарии

1. Трейт `is default(0)` даёт контейнеру значение, которое используется, пока ничего не присвоено. Когда вы читаете переменную, вы получаете `0`. В отличие от случая без объявленного значения по умолчанию, предупреждения о _неинициализированном значении_ нет.

1. После присваивания контейнер содержит `15`, и значение по умолчанию больше не важно.

{% include nav.html %}
