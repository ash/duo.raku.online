---
title: Aanhalingsadverbia
translations_gpt:
---

{% include menu.html %}

Je kunt het gedrag van een quoting-constructie aanpassen met _bijwoorden_. Elke quoting-functie heeft een eigen bijwoord, dat die ene functie aan- of uitzet. De functies zijn het interpoleren van scalars, het uitvoeren van closures (code tussen accolades) en het verwerken van backslashes. Je kunt dus beginnen met `q` of `Q`. Daarna voeg je precies de functies weer toe die je nodig hebt.

Enkele veelgebruikte bijwoorden:

* `:s` / `:scalar` — interpoleer scalaire variabelen (`$x`)
* `:c` / `:closure` — interpoleer code in `{ … }`
* `:b` / `:backslash` — verwerk backslash-escapes zoals `\n`

Voeg één bijwoord toe aan `q` om één functie aan te zetten. Sta bijvoorbeeld code tussen accolades toe, maar verder niets:

```raku
say q/result: {3 * 4}/;   # result: {3 * 4}  — gewone q laat het blok onaangeroerd
say q:c/result: {3 * 4}/; # result: 12        — :c voert het blok uit
```

Met gewone `q` wordt `{ 3 * 4 }` precies zo afgedrukt als het geschreven is. Alleen `:c` zorgt dat het blok draait en voegt de waarde in. Een `$variable` zou echter nog steeds blijven zoals hij is. Let op de scheidingstekens `/…/` hier. Je zou ook `{…}` als scheidingstekens kunnen gebruiken, en de code zou nog steeds compileren. De compiler telt de geneste accolades goed. Maar dan zou de binnenste `{ 3 * 4 }` gewoon deel van de tekst zijn, geen closure. Daardoor zou `:c` het laten zoals het is. Als de tekst dus een `{ … }`-blok bevat, kies dan een ander scheidingsteken dan `{…}`. Dan draait de closure echt. Je kunt ook scalaire interpolatie toevoegen aan `Q`, dat normaal niets verandert:

```raku
my $name = 'Anna';
say Q:s{Hi, $name}; # Hi, Anna
```

Met een `!` zetten bijwoorden functies ook **uit**. Zo gebruik je `qq` maar laat je `$` zoals het is:

```raku
my $price = 5;
say qq:!s{costs $price dollars}; # costs $price dollars
```

`qq` is hetzelfde als `Q` met alle interpolatie-bijwoorden aangezet. `q` is hetzelfde als `Q` met een kleinere groep ervan. Tussen deze twee uitersten kun je met de bijwoorden elk detail regelen.

{% include nav.html %}
