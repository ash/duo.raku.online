---
title: 'Решение: Таблица покупок'
---

{% include menu.html %}

У таблицы есть заголовок. Его можно вывести одной командой `say`. После заголовка идут несколько строк. У всех строк одни и те же части. В каждой строке есть название товара и его цена. Ещё в ней есть количество товаров и их общая стоимость.

Порядок строк должен остаться прежним. Поэтому массив — хорошее место для товаров. Каждая строка таблицы — это один элемент массива.

На втором уровне каждый товар — это запись. Её можно хранить в хэше. У хэша есть несколько полей с именами: `name`, `price` и `quantity`.

Остальная часть программы — это цикл по товарам. Для каждого товара цикл считает общую стоимость. Потом он выводит строку таблицы.

## Код

Вот один способ решить задачу:

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
