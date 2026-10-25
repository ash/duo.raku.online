---
title: 'Solutio: Tabula emptio'
---

{% include menu.html %}

Tabula caput habet, quod uno tantum `say` imprimere potes. Deinde sunt plures ordines cum eadem structura. Quisque ordo ostendit nomen rei, pretium eius, quantitatem et summam pretii.

Vis ordines eodem ordine servare. Propterea array bona electio pro rebus est. Quaeque linea tabulae tum unum elementum array fit.

In secundo gradu, quodque recordum in hash servare potes. Hash paucos campos nominatos habet: `name`, `price`, et `quantity`.

Postea programma tantum circulum super res requirit. In circulo summas calculat et ordines tabulae imprimit.

## Codex

Hic est una solutio possibilis huius muneris:

```raku
my @items = [
    {
        name => 'Sellae',
        price => 20.57,
        quantity => 4,
    },
    {
        name => 'Tabulae',
        price => 50.18,
        quantity => 1,
    }
];

say "Item\tPretium\tN\tSumma";
for @items -> $item {
    my $total = $item<price> * $item<quantity>;
    say "$item<name>\t\$$item<price>\t$item<quantity>\t\$$total";
}
```

🦋 Invenies programma in archivo [purchase-table.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/associatives/purchase-table.raku).

## Exitus

```console
$ raku exercises/associatives/purchase-table.raku
Item	Pretium	N	Summa
Sellae	$20.57	4	$82.28
Tabulae	$50.18	1	$50.18
```

{% include nav.html %}
