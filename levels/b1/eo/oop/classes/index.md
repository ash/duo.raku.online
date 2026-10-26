---
title: Klasoj
translations_gpt:
---

{% include menu.html %}

Ĝis nun ĉiuj datumtipoj, kiujn vi uzis, estis enkonstruitaj en Raku. Ili estis nombroj, ĉenoj, tabeloj kaj tiel plu. Per _objekt-orientita programado_ vi povas difini viajn proprajn tipojn, kiuj nomiĝas _klasoj_. Vi ankaŭ povas krei valorojn de tiuj tipoj, kiuj nomiĝas _objektoj_.

Por difini klason, skribu la ŝlosilvorton `class`, poste nomon kaj blokon:

```raku
class Dog {
}
```

Ĉi tiu klaso `Dog` estas ankoraŭ malplena, sed ĝi jam estas nova tipo. Objekto de klaso ankaŭ nomiĝas _ekzemplero_. Por krei ekzempleron, voku la metodon `new` sur la nomo de la klaso:

```raku
class Dog {
}

my $rex = Dog.new;
say $rex; # Dog.new
```

Nun `$rex` enhavas objekton `Dog`. Ĉiufoje, kiam vi vokas `new`, vi ricevas novan, apartan objekton:

```raku
my $rex = Dog.new;
my $fido = Dog.new;
```

`$rex` kaj `$fido` estas du malsamaj hundoj, kvankam la klaso estas ankoraŭ malplena. En la sekvaj sekcioj, vi donos al klaso ĝiajn proprajn datumojn, kiuj nomiĝas _atributoj_. Vi ankaŭ donos al ĝi ĝian propran konduton, kiu nomiĝas _metodoj_. La unua temo rigardas pli detale, kiel klaso diferencas de siaj ekzempleroj.

{% include nav.html %}
