---
title: 'Решение: Таблица покупок'
---

{% include menu.html %}

У таблицы есть заголовок, который можно вывести одной командой `say`. Потом идут несколько строк с одинаковой структурой. В каждой строке есть название товара, его цена, количество и общая стоимость.

Вы хотите сохранить порядок строк. Поэтому массив — хороший выбор для хранения товаров. Каждая строка таблицы тогда становится одним элементом массива.

На втором уровне каждую запись можно хранить в хэше. У хэша есть несколько именованных полей: `name`, `price` и `quantity`.

После этого программе нужен только цикл по товарам. В цикле она считает итоги и выводит строки таблицы.

## Код

Вот одно возможное решение этой задачи:

```raku
my @items = [
    {
        name => 'Chairs',
        price => 20.57,
        quantity => 4,
    },
    {
        name => 'Tables',
        price => 50.18,
        quantity => 1,
    }
];

say "Item\tPrice\tN\tTotal";
for @items -> $item {
    my $total = $item<price> * $item<quantity>;
    say "$item<name>\t\$$item<price>\t$item<quantity>\t\$$total";
}
```

🦋 Найдите программу в файле [purchase-table.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/associatives/purchase-table.raku).

## Вывод

```console
$ raku exercises/associatives/purchase-table.raku
Item	Price	N	Total
Chairs	$20.57	4	$82.28
Tables	$50.18	1	$50.18
```

{% include nav.html %}
