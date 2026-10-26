---
title: Aanhalingsadverbia
translations_gpt:
---

{% include menu.html %}

Je kunt veranderen hoe een quoting-constructie werkt. Daarvoor gebruik je _bijwoorden_. Een quoting-constructie heeft een paar functies. Ze kan bijvoorbeeld scalars interpoleren. Ze kan code tussen accolades uitvoeren. Ze kan backslashes verwerken. Elke functie heeft een eigen bijwoord. Het bijwoord zet deze ene functie aan of uit. Je kunt dus beginnen met `q` of `Q`. Daarna voeg je precies de functies weer toe die je nodig hebt.

Hier zijn een paar veelgebruikte bijwoorden:

* `:s` / `:scalar` — zet de waarden van scalaire variabelen (`$x`) in de string
* `:c` / `:closure` — voer de code in `{ … }` uit en zet het resultaat in de string
* `:b` / `:backslash` — verwerk backslash-escapes, zoals `\n`

Voeg één bijwoord toe aan `q`. Dan krijgt `q` één functie. Laat hem bijvoorbeeld code uitvoeren, maar verder niets:

```raku
say q/result: {3 * 4}/;   # result: {3 * 4}  — gewone q laat het blok onaangeroerd
say q:c/result: {3 * 4}/; # result: 12        — :c voert het blok uit
```

Met gewone `q` drukt Raku `{ 3 * 4 }` af zoals het is. Alleen `:c` voert het blok uit. Dan zet Raku het resultaat in de string. Een `$variable` blijft nog steeds zoals hij is. Kijk naar de scheidingstekens hier: `/…/`. Scheidingstekens zijn de tekens rond de tekst. Je kunt ook `{…}` als scheidingstekens gebruiken. Er komt geen fout, want de compiler telt de accolades goed. Maar dan is de binnenste `{ 3 * 4 }` gewoon een deel van de tekst. Het is geen code. Daarom voert `:c` het niet uit, en het blijft zoals het is. Heeft de tekst een `{ … }`-blok? Gebruik dan geen `{…}` als scheidingstekens. Gebruik andere scheidingstekens. Dan draait de code tussen de accolades. Je kunt ook scalaire interpolatie aan `Q` toevoegen. Zonder die interpolatie laat `Q` alle tekst zoals hij is:

```raku
my $name = 'Anna';
say Q:s{Hi, $name}; # Hi, Anna
```

Bijwoorden kunnen functies ook **uitzetten**. Schrijf daarvoor een `!`. Hier gebruiken we `qq`, maar `$` blijft een gewoon teken:

```raku
my $price = 5;
say qq:!s{costs $price dollars}; # costs $price dollars
```

`qq` is hetzelfde als `Q` met alle interpolatie-bijwoorden aan. `q` is hetzelfde als `Q` met minder bijwoorden aan. Met de bijwoorden kies je elke functie zelf, tussen deze twee in.

{% include nav.html %}
