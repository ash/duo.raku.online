---
title: 'Solution: Таблиця покупок'
---

{% include menu.html %}

Таблиця має заголовок, який ви можете вивести лише одним `say`. Далі йде кілька рядків з однаковою структурою. Кожен рядок показує назву товару, його ціну, кількість і загальну вартість.

Ви хочете зберегти порядок рядків. Ось чому масив — хороший вибір для товарів. Тоді кожен рядок таблиці стає одним елементом масиву.

На другому рівні ви можете зберегти кожен запис у хеші. Хеш має кілька іменованих полів: `name`, `price` і `quantity`.

Після цього програмі потрібен лише цикл по товарах. У циклі вона обчислює загальну вартість і виводить рядки таблиці.

## Код

Ось одне з можливих рішень цього завдання:

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
