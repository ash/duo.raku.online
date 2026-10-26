---
title: Vergelijkingen en plannen
translations_gpt:
---

{% include menu.html %}

De `Test`-module heeft meer dan `ok` en `is`. Hij heeft vergelijkingen voor verschillende soorten waarden. Dit zijn de nuttigste:

* `is` — controleert of twee waarden gelijk zijn (als strings of getallen)
* `is-deeply` — controleert of twee datastructuren precies gelijk zijn, en hun types ook
* `like` — controleert of een string bij een regex past
* `isnt` — slaagt als twee waarden **niet** gelijk zijn

Gebruik `is-deeply` voor arrays, hashes en data in andere data. Het vergelijkt de structuur en het type precies:

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

`is` maakt strings van de waarden. Dan vergelijkt het ze, maar niet erg streng. `is-deeply` is anders. Daarmee moeten de structuren echt overeenkomen. Let op: `done-testing` zet het plan `1..1` aan het eind, na de controle.

`done-testing` kan de tests voor je tellen. Maar je kunt het aantal ook aan het begin geven, met `plan`. Dit helpt bij één probleem. Soms stopt een testbestand te vroeg. Dan slaat het sommige controles over, zonder enige melding:

```raku
use Test;

plan 2;
ok True,  'first';
ok 1 < 2, 'second';
```

Nu komt het plan **eerst**. Het staat vóór de resultaten:

```
1..2
ok 1 - first
ok 2 - second
```

Hier zie je hoe `plan` anders is dan `done-testing`. `plan` print het aantal `1..2` bovenaan, voordat er controles draaien. `done-testing` print het helemaal aan het eind. In elk geval verwacht de uitvoering met `plan 2` precies twee tests. Als er minder of meer tests draaien, faalt de hele reeks tests. Gebruik `plan` als het aantal tests vastligt en je het kent. Gebruik `done-testing` als het makkelijker is om de testmodule te laten tellen.

{% include nav.html %}
