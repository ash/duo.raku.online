---
title: Quiz — Der Stash
---

{% include menu.html %}

Das `Greeting`-Modul exportiert `hello`. Es hat auch `our $version`. Was gibt `Greeting::.keys.sort` zurück?

{:.quiz}
1 | ($version EXPORT)
0 | ($version)
0 | ($version &hello)
0 | (hello version)

{% include quiz.html %}

<div class="extended-explanation">

`$version` ist die `our`-Variable des Moduls. Sie steht mit ihrem Sigil in der Liste. `EXPORT` ist ein Package. Raku fügt es automatisch hinzu. Es enthält die Namen mit `is export`. Also ist das exportierte `hello` in `EXPORT`. Es ist kein eigener Name im Package.

</div>

{% include nav.html %}
