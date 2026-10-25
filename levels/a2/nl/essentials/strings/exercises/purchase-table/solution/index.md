---
title: 'Solution: Aankoop tabel'
---

{% include menu.html %}

## Code

Hier is één manier om het op te lossen:

```raku
my $stoel-prijs = 20.57;
my $stoelen = 4;
my $stoelen-totaal = $stoel-prijs * $stoelen;

my $tafel-prijs = 50.18;
my $tafels = 1;
my $tafels-totaal = $tafel-prijs * $tafels;

say "Item\tPrijs\tN\tTotaal";
say "Stoelen\t\$$stoel-prijs\t$stoelen\t\$$stoelen-totaal";
say "Tafels\t\$$tafel-prijs\t$tafels\t\$$tafels-totaal";
```

Alle getallen staan direct in de code. Een paar variabelen bewaren ze. We gebruiken ook de vermenigvuldigingsoperator `*` voor het resultaat. Je leert meer over operators in de volgende secties van de cursus. Maar ook nu al moet code zoals `$stoel-prijs * $stoelen` duidelijk zijn.

Drie regels code maken de uitvoer. Ze printen de drie regels van de tabel. De eerste regel is de kop. Kijk naar de kolommen. Tabtekens `\t` scheiden ze. De dataregels hebben een geëscapet dollarteken: `\$`. Ze hebben ook verschillende variabelen. We willen deze variabelen interpoleren.

🦋 Je kunt de broncode vinden in het bestand [purchase-table.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/strings/purchase-table.raku).

## Uitvoer

Voer het programma uit. Het print de tabel:

```
$ raku exercises/strings/purchase-table.raku
Item    Prijs   N      Totaal
Stoelen $20.57  4      $82.28
Tafels  $50.18  1      $50.18
```

## Opmerkingen

Zag je de streepjes in sommige namen van variabelen? Kijk naar `$stoel-prijs` of `$tafels-totaal`. In Raku zijn zulke namen helemaal goed.

Soms staan er twee dollartekens naast elkaar. Raak daardoor niet in de war. Raku leest ze één voor één. Kijk naar `\$$prijs`. Het eerste dollarteken is geëscapet. Dus is het gewoon een dollarteken. Het tweede is een deel van de variabelenaam `$prijs`.

Alle strings staan tussen dubbele aanhalingstekens. Zo kan Raku de variabelen en de speciale tekens interpoleren.

We komen later terug op deze taak. Eerst leren we over arrays en hashes.

{% include nav.html %}
