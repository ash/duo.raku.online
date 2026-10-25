---
title: 'Solution: Таблица за покупки'
---

{% include menu.html %}

Таблицата има заглавие. Можете да го отпечатате само с един `say`. След заглавието има няколко реда. Всички редове имат едни и същи части. Всеки ред има името на артикул и цената му. Той има също броя на артикулите и общата им цена.

Подредбата на редовете трябва да остане същата. Затова масивът е добро място за артикулите. Всеки ред от таблицата е един елемент от масива.

На второто ниво всеки артикул е запис. Можете да го пазите в хеш. Хешът има няколко полета с имена: `name`, `price` и `quantity`.

Останалата част от програмата е цикъл над артикулите. За всеки артикул цикълът изчислява общата цена. След това той отпечатва един ред от таблицата.

## Код

Ето един начин да решите задачата:

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

🦋 Намерете програмата във файла [purchase-table.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/associatives/purchase-table.raku).

## Изход

```console
$ raku exercises/associatives/purchase-table.raku
Item	Price	N	Total
Chairs	$20.57	4	$82.28
Tables	$50.18	1	$50.18
```

{% include nav.html %}
