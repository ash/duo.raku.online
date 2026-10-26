---
title: Quiz — Der Stash
---

{% include menu.html %}

Das `Greeting`-Modul exportiert `hello` und definiert `our $version`. Was gibt `Greeting::.keys.sort` zurück?

{:.quiz}
1 | ($version EXPORT)
0 | ($version)
0 | ($version &hello)
0 | (hello version)

{% include quiz.html %}

<div class="extended-explanation">

`$version` ist die `our`-Variable des Moduls, und sie wird mit ihrem Sigil aufgelistet. `EXPORT` ist ein Package, das Raku automatisch für die `is export`-Namen hinzufügt. Daher erscheint das exportierte `hello` dort und nicht als eigener Name im Package.

</div>

{% include nav.html %}
