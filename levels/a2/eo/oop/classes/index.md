---
title: Klasoj
translations_gpt:
---

{% include menu.html %}

Ĝis nun vi uzis nur la tipojn, kiuj venas kun Raku. Ili estas nombroj, ĉenoj, tabeloj kaj tiel plu. Per _objekt-orientita programado_ vi povas fari viajn proprajn tipojn. Tia tipo nomiĝas _klaso_. Valoro de ĉi tiu tipo nomiĝas _objekto_.

Por fari klason, skribu la ŝlosilvorton `class`. Post ĝi, skribu nomon kaj blokon:

```raku
class Dog {
}
```

Ĉi tiu klaso `Dog` nun estas malplena. Sed ĝi jam estas nova tipo. Objekto de klaso ankaŭ nomiĝas _ekzemplero_. `new` estas metodo. Por fari ekzempleron, voku ĝin sur la nomo de la klaso:

```raku
class Dog {
}

my $rex = Dog.new;
say $rex; # Dog.new
```

Nun la variablo `$rex` havas objekton `Dog` en si. Ĉiu voko de `new` faras novan, apartan objekton:

```raku
my $rex = Dog.new;
my $fido = Dog.new;
```

`$rex` kaj `$fido` estas du malsamaj hundoj. La klaso estas ankoraŭ malplena, sed la hundoj estas malsamaj. En la sekvaj sekcioj, vi donas al klaso ĝiajn proprajn datumojn. Tiuj datumoj nomiĝas _atributoj_. Klaso ankaŭ ricevas sian propran konduton, aŭ agojn. Tiuj agoj nomiĝas _metodoj_. La unua temo rigardas pli detale klason kaj ĝiajn ekzemplerojn. Ĝi montras, kiel ili diferencas.

{% include nav.html %}
