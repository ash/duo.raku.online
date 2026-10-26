---
title: Vergelijkingen en plannen
translations_gpt:
---

{% include menu.html %}

Naast `ok` en `is` heeft de `Test`-module vergelijkingen voor verschillende soorten waarden. Hier zijn de nuttigste:

* `is` — controleert of twee waarden gelijk zijn (als strings of getallen)
* `is-deeply` — controleert of twee datastructuren precies gelijk zijn, ook hun types
* `like` — controleert of een string overeenkomt met een regex
* `isnt` — slaagt als twee waarden **niet** gelijk zijn

`is-deeply` is de juiste keuze voor arrays, hashes en geneste data. Het vergelijkt zowel de structuur als het type precies:

```raku
use Test;

my @reversed = (1, 2, 3).reverse;
is-deeply @reversed, [3, 2, 1], 'reversed';

done-testing;
```

Dit geeft:

```
ok 1 - reversed
1..1
```

`is` zou de waarden omzetten naar strings en ze losjes vergelijken. Maar `is-deeply` eist dat de structuren echt overeenkomen. Let op: `done-testing` zet het plan `1..1` aan het eind, na de controle.

Je hoeft `done-testing` de tests niet voor je te laten tellen. In plaats daarvan kun je het aantal aan het begin opgeven met `plan`. Dit beschermt je tegen een testbestand dat te vroeg stopt en stilletjes controles overslaat:

```raku
use Test;

plan 2;
ok True,  'first';
ok 1 < 2, 'second';
```

Dit keer komt het plan **eerst**, vóór de resultaten:

```
1..2
ok 1 - first
ok 2 - second
```

Dit is het verschil met `done-testing` dat je kunt zien. `plan` print het aantal `1..2` bovenaan, voordat er controles worden uitgevoerd. `done-testing` print het juist helemaal aan het eind. In elk geval verwacht de uitvoering met `plan 2` precies twee tests. Als er minder of meer tests draaien, wordt de testsuite als mislukt gemeld. Gebruik `plan` als het aantal tests vastligt en bekend is. Gebruik `done-testing` als het makkelijker is om het testframework te laten tellen.

{% include nav.html %}
