---
title: Luiheid en gretigheid
translations_gpt:
---

{% include menu.html %}

Raku berekent sommige lijsten pas als het hun elementen nodig heeft. Zulke lijsten zijn _lazy_. Met de prefixen `lazy` en `eager` kun je dit zelf sturen.

Het prefix `eager` laat Raku een lijst **in één keer** maken, nu meteen:

```raku
my @squares = eager (1..3).map(* ** 2);
say @squares; # [1 4 9]
```

De `map` maakt de waarden ook zonder `eager`. Maar `eager` zorgt ervoor dat Raku ze allemaal meteen berekent. Raku wacht niet tot je ze nodig hebt.

Het prefix `lazy` doet het omgekeerde. Het markeert een lijst als lazy. Dan maakt Raku elk element pas als de code erom vraagt. Zo kan een lijst in theorie geen einde hebben:

```raku
my $numbers = lazy (1 .. Inf);
say $numbers.is-lazy; # True
```

De methode `.is-lazy` laat zien dat de lijst lazy is. De lijst probeert dus niet eerst al zijn elementen te berekenen. En aan die elementen komt geen einde.

Maar in dit voorbeeld maakt Raku de lijst toch al lazy. Een range zonder einde, zoals `1 .. Inf`, is al lazy. Daarom print `say (1 .. Inf).is-lazy` ook zonder het prefix `True`. Hier verandert `lazy` niets. Het laat alleen duidelijk zien wat je wilt. Het prefix is echt nuttig in een ander geval. Soms berekent Raku een lijst eager, helemaal in één keer. Met het prefix kun je zo'n lijst lazy maken.

Meestal maakt Raku zelf een goede keuze. Ranges en reeksen zijn lazy. Een gewone toewijzing aan een array is eager. Gebruik deze prefixen als je een andere keuze wilt. Gebruik `eager` om een trage berekening nu te laten gebeuren. Gebruik `lazy` om een heel grote of eindeloze berekening uit te stellen.

{% include nav.html %}
