---
title: 'Solvo: Aĉettabelo'
---

{% include menu.html %}

La tabelo havas kaplinion. Vi povas presi ĝin per nur unu `say`. Post la kaplinio estas kelkaj vicoj. Ĉiuj vicoj havas la samajn partojn. Ĉiu vico havas la nomon de varo kaj ĝian prezon. Ĝi ankaŭ havas la nombron de varoj kaj ilian tutan koston.

La ordo de la vicoj devas resti la sama. Do tabelo estas bona loko por la varoj. Ĉiu linio de la tabelo estas unu elemento de la tabelo.

Sur la dua nivelo, ĉiu varo estas rekordo. Vi povas teni ĝin en haketo. La haketo havas kelkajn kampojn kun nomoj: `name`, `price`, kaj `quantity`.

La resto de la programo estas buklo super la varoj. Por ĉiu varo, la buklo kalkulas la sumon. Poste ĝi presas vicon de la tabelo.

## Kodo

Jen unu maniero solvi la taskon:

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
