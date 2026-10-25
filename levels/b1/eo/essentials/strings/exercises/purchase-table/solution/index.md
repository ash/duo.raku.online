---
title: 'Solvo: Aĉettabelo'
---

{% include menu.html %}

## Kodo

Jen unu ebla solvo:

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

Ĉiuj nombroj estas skribitaj rekte en la kodo kaj konservitaj en kelkaj variabloj. Ni ankaŭ uzas la multiplikan operatoron `*` por kalkuli la rezulton. Ni lernos pli pri operatoroj en la sekvaj sekcioj de la kurso. Sed jam nun, kodo kiel `$chair-price * $chairs` ne devus kaŭzi demandojn.

Tri linioj de kodo presas la tri liniojn de la tabelo, inkluzive de la kaplinio. Rimarku, kiel tabokarakteroj `\t` apartigas la kolumnojn. En la datumaj vicoj, vi ankaŭ povas vidi eskapitan dolarsignon: `\$`. Estas ankaŭ malsamaj variabloj, kiujn ni volas interpoli.

🦋 Vi povas trovi la fontkodon en la dosiero [purchase-table.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/strings/purchase-table.raku).

## Eligo

Rulu la programon kaj vidu kiel ĝi presas la tabelon:

```
$ raku exercises/strings/purchase-table.raku
Item    Price   N      Total
Chairs  $20.57  4      $82.28
Tables  $50.18  1      $50.18
```

## Komentoj

Ĉu vi rimarkis la streketojn en nomoj de variabloj kiel `$chair-price` aŭ `$tables-total`? En Raku, tio estas tute normala maniero nomi variablojn.

Ne konfuziĝu pro la du dolarsignoj unu apud la alia. Raku legas ilin aparte. Ekzemple, en `\$$price`, la unua dolarsigno estas eskapita, do ĝi signifas sin mem. La dua estas parto de la nomo de variablo `$price`.

Ni metis ĉiujn ŝnurojn en duoblajn citilojn. Tio permesas interpoli la variablojn kaj specialajn karakterojn.

Ni revenos al ĉi tiu tasko, kiam ni scios pri tabeloj kaj haketoj.

{% include nav.html %}
