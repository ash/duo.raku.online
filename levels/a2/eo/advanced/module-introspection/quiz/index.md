---
title: Kvizo — La Stash
translations_gpt:
---

{% include menu.html %}

La modulo `Greeting` eksportas `hello`. Ĝi ankaŭ havas `our $version`. Kion redonas `Greeting::.keys.sort`?

{:.quiz}
1 | ($version EXPORT)
0 | ($version)
0 | ($version &hello)
0 | (hello version)

{% include quiz.html %}

<div class="extended-explanation">

`$version` estas la `our`-variablo de la modulo. Ĝi estas en la listo kun sia sigelo. `EXPORT` estas pakaĵo. Raku aldonas ĝin aŭtomate. Ĝi havas la nomojn kun `is export`. Do la eksportita `hello` estas en `EXPORT`. Ĝi ne estas aparta nomo en la pakaĵo.

</div>

{% include nav.html %}
