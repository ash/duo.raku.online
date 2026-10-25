---
title: 'Solvo: Aĉettabelo'
---

{% include menu.html %}

## Kodo

Jen unu maniero solvi ĝin:

```raku
my $chair-price = 20.57;
my $chairs = 4;
my $chairs-total = $chair-price * $chairs;

my $table-price = 50.18;
my $tables = 1;
my $tables-total = $table-price * $tables;

say "Item\tPrice\tN\tTotal";
say "Chairs\t\$$chair-price\t$chairs\t\$$chairs-total";
say "Tables\t\$$table-price\t$tables\t\$$tables-total";
```

Ĉiuj nombroj estas skribitaj rekte en la kodo. Kelkaj variabloj tenas ilin. Ni ankaŭ uzas la operatoron de multipliko `*` por ricevi la rezulton. Vi lernos pli pri operatoroj en la sekvaj sekcioj de la kurso. Sed eĉ nun, kodo kiel `$chair-price * $chairs` devus esti klara.

Tri linioj de kodo faras la eligon. Ili presas la tri liniojn de la tabelo. La unua linio estas la kaplinio. Rigardu la kolumnojn. Tabokarakteroj `\t` apartigas ilin. La datumaj linioj havas eskapitan dolarsignon: `\$`. Ili ankaŭ havas malsamajn variablojn. Ni volas interpoli tiujn variablojn.

🦋 Vi povas trovi la fontkodon en la dosiero [purchase-table.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/strings/purchase-table.raku).

## Eligo

Rulu la programon. Ĝi presas la tabelon:

```
$ raku exercises/strings/purchase-table.raku
Item    Price   N      Total
Chairs  $20.57  4      $82.28
Tables  $50.18  1      $50.18
```

## Komentoj

Ĉu vi vidis la streketojn en kelkaj nomoj de variabloj? Rigardu `$chair-price` aŭ `$tables-total`. En Raku, tiaj nomoj estas tute en ordo.

Kelkfoje du dolarsignoj staras unu apud la alia. Ne lasu tion konfuzi vin. Raku legas ilin unu post la alia. Rigardu `\$$price`. La unua dolarsigno estas eskapita. Do ĝi estas nur dolarsigno. La dua estas parto de la nomo de variablo `$price`.

Ĉiuj ŝnuroj estas en duoblaj citiloj. Do Raku povas interpoli la variablojn kaj la specialajn karakterojn.

Poste ni revenos al ĉi tiu tasko. Unue, ni lernos pri tabeloj kaj haketoj.

{% include nav.html %}
