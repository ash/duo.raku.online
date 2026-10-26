---
title: Kvizo — La Stash
translations_gpt:
---

{% include menu.html %}

La modulo `Greeting` eksportas `hello` kaj difinas `our $version`. Kion redonas `Greeting::.keys.sort`?

{:.quiz}
1 | ($version EXPORT)
0 | ($version)
0 | ($version &hello)
0 | (hello version)

{% include quiz.html %}

<div class="extended-explanation">

`$version` estas la `our`-variablo de la modulo, kaj ĝi estas listigita kun sia sigelo. `EXPORT` estas pakaĵo, kiun Raku aldonas aŭtomate por la nomoj kun `is export`. Do la eksportita `hello` aperas tie, ne kiel aparta nomo en la pakaĵo.

</div>

{% include nav.html %}
