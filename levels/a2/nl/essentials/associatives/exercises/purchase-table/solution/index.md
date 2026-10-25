---
title: 'Solution: Aankoop tabel'
---

{% include menu.html %}

De tabel heeft een koptekst. Je kunt hem met maar één `say` printen. Na de koptekst komen een paar rijen. Alle rijen hebben dezelfde delen. Elke rij heeft de naam van een artikel en de prijs. Hij heeft ook het aantal artikelen en de totale kosten.

De volgorde van de rijen moet gelijk blijven. Daarom is een array een goede plek voor de items. Elke regel van de tabel is één element van de array.

Op het tweede niveau is elk item een record. Je kunt het in een hash bewaren. De hash heeft een paar velden met namen: `name`, `price`, en `quantity`.

De rest van het programma is een lus over de items. Voor elk item berekent de lus het totaal. Dan print hij een rij van de tabel.

## Code

Hier is een manier om de taak op te lossen:

```raku
my @items = [
    {
        name => 'Stoelen',
        price => 20.57,
        quantity => 4,
    },
    {
        name => 'Tafels',
        price => 50.18,
        quantity => 1,
    }
];

say "Artikel\tPrijs\tAantal\tTotaal";
for @items -> $item {
    my $total = $item<price> * $item<quantity>;
    say "$item<name>\t\$$item<price>\t$item<quantity>\t\$$total";
}
```

🦋 Vind het programma in het bestand [purchase-table.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/associatives/purchase-table.raku).

## Uitvoer

```console
$ raku exercises/associatives/purchase-table.raku
Artikel	Prijs	Aantal	Totaal
Stoelen	$20.57	4	$82.28
Tafels	$50.18	1	$50.18
```

{% include nav.html %}
