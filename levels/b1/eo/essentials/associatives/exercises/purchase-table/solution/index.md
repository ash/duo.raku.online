---
title: 'Solvo: Aĉettabelo'
---

{% include menu.html %}

La tabelo havas kaplinion, kiun vi povas presi per nur unu `say`. Poste estas kelkaj vicoj kun la sama strukturo. Ĉiu vico montras la nomon de la varo, ĝian prezon, la kvanton kaj la tutan koston.

Vi volas teni la vicojn en ordo. Tial tabelo estas bona elekto por la varoj. Ĉiu linio de la tabelo tiam fariĝas unu elemento de la tabelo.

Sur la dua nivelo, vi povas konservi ĉiun rekordon en haketo. La haketo havas kelkajn nomitajn kampojn: `name`, `price`, kaj `quantity`.

Post tio, la programo bezonas nur buklon super la varoj. En la buklo, ĝi kalkulas la sumojn kaj presas la vicojn de la tabelo.

## Kodo

Jen unu ebla solvo de ĉi tiu tasko:

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

🦋 Trovu la programon en la dosiero [purchase-table.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/associatives/purchase-table.raku).

## Eligo

```console
$ raku exercises/associatives/purchase-table.raku
Item	Price	N	Total
Chairs	$20.57	4	$82.28
Tables	$50.18	1	$50.18
```

{% include nav.html %}
