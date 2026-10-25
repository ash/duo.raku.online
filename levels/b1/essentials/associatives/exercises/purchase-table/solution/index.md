---
title: 'Solution: Purchase table'
---

{% include menu.html %}

The table has a header, which you can print with just one `say`. Then there are several rows with the same structure. Each row shows the item name, its price, the quantity and the total cost.

You want to keep the rows in order. That is why an array is a good choice for the items. Each line of the table then becomes one element of the array.

At the second level, you can store each record in a hash. The hash has a few named fields: `name`, `price`, and `quantity`.

After that, the program only needs a loop over the items. In the loop, it calculates the totals and prints the rows of the table.

## Code

Here is one possible solution to this task:

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
