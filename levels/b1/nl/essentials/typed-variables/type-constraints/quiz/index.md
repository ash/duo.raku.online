---
title: Quiz — Type beperkingen
---

{% include menu.html %}

Voeg typebeperkingen toe aan de variabelen in het programma hieronder. Kies het meest specifieke type dat de waarde kan bevatten.

{:.quiz-code}
Int | my ␣␣␣ $a = 500;
Int | my ␣␣␣ $b = 304839573985398539853535353; | Lange getallen worden standaard ondersteund.
Rat | my ␣␣␣ $c = 3.5; | Dit is een `Rat`. Merk op dat `Num` waarden in wetenschappelijke notatie worden geschreven.
Rat | my ␣␣␣ $d = 17/19; | Dit is ook een `Rat`, en geen deling.
Rat | my ␣␣␣ $e = <2/5>; | Dit is een van de mogelijke notaties voor `Rat`s.
Num | my ␣␣␣ $f = pi; | De ingebouwde waarde van π is een `Num` waarde.
Num | my ␣␣␣ $g = 3e-4;
Str | my ␣␣␣ $h = &apos;18&apos;;

{% include quiz.html %}

{% include nav.html %}
