---
title: 'Solution: Таблица за покупки'
---

{% include menu.html %}

Таблицата има заглавие, което можете да отпечатате само с един `say`. След него има няколко реда с еднаква структура. Всеки ред показва името на артикула, цената му, количеството и общата цена.

Искате да запазите подредбата на редовете. Затова масивът е добър избор за артикулите. Тогава всеки ред от таблицата става един елемент от масива.

На второто ниво можете да съхраните всеки запис в хеш. Хешът има няколко полета с имена: `name`, `price` и `quantity`.

След това програмата има нужда само от цикъл над артикулите. В цикъла тя изчислява общите цени и отпечатва редовете на таблицата.

## Код

Ето едно възможно решение на тази задача:

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
