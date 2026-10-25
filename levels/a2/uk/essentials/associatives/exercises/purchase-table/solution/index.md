---
title: 'Solution: Таблиця покупок'
---

{% include menu.html %}

Таблиця має заголовок. Ви можете вивести його лише одним `say`. Після заголовка йде кілька рядків. Усі рядки мають однакові частини. Кожен рядок має назву товару та його ціну. Також у ньому є кількість товарів і їхня загальна вартість.

Порядок рядків має залишитися тим самим. Тому масив добре підходить для товарів. Кожен рядок таблиці — це один елемент масиву.

На другому рівні кожен товар — це запис. Ви можете зберігати його в хеші. Хеш має кілька полів з іменами: `name`, `price` і `quantity`.

Решта програми — це цикл по товарах. Для кожного товару цикл рахує загальну вартість. Потім він виводить рядок таблиці.

## Код

Ось один спосіб розв'язати завдання:

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

🦋 Знайдіть програму у файлі [purchase-table.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/associatives/purchase-table.raku).

## Вивід

```console
$ raku exercises/associatives/purchase-table.raku
Item	Price	N	Total
Chairs	$20.57	4	$82.28
Tables	$50.18	1	$50.18
```

{% include nav.html %}
