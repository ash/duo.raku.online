---
title: Quiz — Export-Tags
---

{% include menu.html %}

Ein Modul deklariert `sub hello is export` und `sub goodbye is export(:partings)`. Welche Subroutinen kann ein Programm nach `use Greeting :partings;` direkt aufrufen?

{:.quiz}
1 | Nur `goodbye`
0 | Nur `hello`
0 | Sowohl `hello` als auch `goodbye`
0 | Keine von beiden

{% include quiz.html %}

<div class="extended-explanation">

Wenn du ein Tag nennst, importiert `use` diese Gruppe *anstelle* der Standardgruppe. Also holt `:partings` die Subroutine `goodbye`, lässt aber `hello` weg. Um beide zu bekommen, würdest du das eingebaute Tag `:ALL` mit `use Greeting :ALL;` anfordern.

</div>

{% include nav.html %}
