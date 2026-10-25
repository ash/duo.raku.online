---
title: 'Solutio: Tabula emptio'
---

{% include menu.html %}

Tabula caput habet. Id uno tantum `say` imprimere potes. Post caput sunt aliquot ordines. Omnes ordines easdem partes habent. Quisque ordo nomen rei et pretium eius habet. Etiam numerum rerum et summam pretii habet.

Ordines eodem ordine manere debent. Itaque array locus bonus pro rebus est. Quaeque linea tabulae unum elementum array est.

In secundo gradu, quaeque res est recordum. Id in hash servare potes. Hash paucos campos cum nominibus habet: `name`, `price`, et `quantity`.

Reliquum programmatis est circulus super res. Pro quaque re, circulus summam calculat. Deinde ordinem tabulae imprimit.

## Codex

Hic est una solutio muneris:

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
