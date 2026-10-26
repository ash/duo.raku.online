---
title: Quiz — Export-Tags
---

{% include menu.html %}

Ein Modul hat `sub hello is export` und `sub goodbye is export(:partings)`. Ein Programm hat `use Greeting :partings;`. Welche Subroutinen kann das Programm direkt aufrufen?

{:.quiz}
1 | Nur `goodbye`
0 | Nur `hello`
0 | Sowohl `hello` als auch `goodbye`
0 | Keine von beiden

{% include quiz.html %}

<div class="extended-explanation">

Mit einem Tag importiert `use` seine Gruppe *statt* der Standardgruppe. Also holt `:partings` die Subroutine `goodbye`, aber nicht `hello`. Um beide zu bekommen, frag nach dem eingebauten Tag `:ALL`: `use Greeting :ALL;`.

</div>

{% include nav.html %}
