---
title: Quiz — Stash
translations_gpt: true
---

{% include menu.html %}

Modulus `Greeting` subroutinam `hello` exportat et `our $version` definit. Quid `Greeting::.keys.sort` reddit?

{:.quiz}
1 | ($version EXPORT)
0 | ($version)
0 | ($version &hello)
0 | (hello version)

{% include quiz.html %}

<div class="extended-explanation">

`$version` est variabilis `our` moduli, et cum sigillo suo enumeratur. `EXPORT` est fasciculus quem Raku automatice addit pro nominibus `is export`. Itaque `hello` exportata ibi apparet, non ut nomen separatum in fasciculo.

</div>

{% include nav.html %}
