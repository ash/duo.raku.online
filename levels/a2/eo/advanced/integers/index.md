---
title: Entjeroj
translations_gpt:
---

{% include menu.html %}

Vi uzas entjerojn jam de la komenco de la kurso. Entjeroj estas tutaj nombroj. Ĉi tiu sekcio montras kelkajn el iliaj trajtoj. Eble vi ne tuj rimarkas ĉi tiujn trajtojn.

La plej grava trajto estas _arbitra precizeco_. Entjero en Raku ne havas fiksan nombron da bajtoj. Do ĝi neniam superfluas. Ĉe superfluo, nombro fariĝas tro granda. Tiam ĝi silente fariĝas malĝusta. Kun sufiĉe da memoro, entjero povas esti tiom granda, kiom vi bezonas:

```raku
say 2 ** 100;
# 1267650600228229401496703205376
```

Ĉi tiu valoro estas ekzakta. Raku ne rondigas ĝin. Same estas, kiam vi multiplikas grandajn nombrojn. Ekzemple, Raku trovas la ekzaktan faktorialon de 50:

```raku
my $factorial = 1;
$factorial = $factorial * $_ for 1..50;
say $factorial;
# 30414093201713378043612608166064768844377641568960512000000000000
```

Longajn nombrojn en la kodo estas malfacile legi. Do vi povas meti la ciferojn en grupojn per substrekoj. La kompililo preterlasas la substrekojn:

```raku
say 1_000_000; # 1000000
```

La sekvaj temoj montras, kiel skribi entjerojn en aliaj bazoj. Bazo 10 ne estas la sola. Ili ankaŭ montras kelkajn utilajn metodojn por entjeroj.

{% include nav.html %}
