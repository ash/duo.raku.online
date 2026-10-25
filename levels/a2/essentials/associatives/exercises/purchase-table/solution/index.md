---
title: 'Solution: Purchase table'
---

{% include menu.html %}

The table has a header. You can print it with just one `say`. After the header, there are some rows. All the rows have the same parts. Each row has the name of an item and its price. It also has the number of items and their total cost.

The order of the rows must stay the same. So an array is a good place for the items. Each line of the table is one element of the array.

On the second level, each item is a record. You can keep it in a hash. The hash has a few fields with names: `name`, `price`, and `quantity`.

The rest of the program is a loop over the items. For each item, the loop calculates the total. Then it prints a row of the table.

## Code

Here is one way to solve the task:

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

🦋 Find the program in the file [purchase-table.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/associatives/purchase-table.raku).

## Output

```console
$ raku exercises/associatives/purchase-table.raku
Item	Price	N	Total
Chairs	$20.57	4	$82.28
Tables	$50.18	1	$50.18
```

{% include nav.html %}
