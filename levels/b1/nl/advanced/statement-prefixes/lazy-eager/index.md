---
title: Luiheid en gretigheid
translations_gpt:
---

{% include menu.html %}

Sommige lijsten in Raku worden pas berekend als hun elementen nodig zijn. Zulke lijsten zijn _lazy_. Met de prefixen `lazy` en `eager` kun je dit direct sturen.

Het prefix `eager` laat Raku een lijst **helemaal in één keer** maken, meteen:

```raku
my @squares = eager (1..3).map(* ** 2);
say @squares; # [1 4 9]
```

Zonder `eager` zou de `map` de waarden ook maken. Maar `eager` zorgt ervoor dat ze allemaal meteen berekend worden, niet later op aanvraag.

Het prefix `lazy` doet het omgekeerde. Het markeert een lijst als lazy. Dan worden de elementen pas gemaakt als de code erom vraagt. Daardoor kan een lijst oneindig zijn, in elk geval in theorie:

```raku
my $numbers = lazy (1 .. Inf);
say $numbers.is-lazy; # True
```

De methode `.is-lazy` bevestigt dit. De lijst zal niet proberen al zijn eindeloze elementen vooraf te berekenen.

Maar in dit voorbeeld zou Raku de lijst toch al lazy maken. Een range zonder einde, zoals `1 .. Inf`, is al lazy. Daarom print `say (1 .. Inf).is-lazy` ook zonder het prefix `True`. Hier `lazy` schrijven verandert niets. Het laat alleen duidelijk zien wat je bedoelt. Het prefix is echt nuttig voor een lijst die Raku anders eager zou berekenen. Met `lazy` kun je zo'n lijst lazy maken.

Meestal maakt Raku zelf een goede keuze. Ranges en reeksen zijn lazy, en een gewone toewijzing aan een array is eager. Gebruik deze prefixen als je die keuze moet veranderen. Gebruik `eager` om een dure berekening nu te laten gebeuren. Gebruik `lazy` om een berekening uit te stellen die groot kan zijn of geen einde heeft.

{% include nav.html %}
