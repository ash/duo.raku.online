---
title: Quiz — De Stash
translations_gpt:
---

{% include menu.html %}

De module `Greeting` exporteert `hello`. Hij heeft ook `our $version`. Wat geeft `Greeting::.keys.sort` terug?

{:.quiz}
1 | ($version EXPORT)
0 | ($version)
0 | ($version &hello)
0 | (hello version)

{% include quiz.html %}

<div class="extended-explanation">

`$version` is de `our`-variabele van de module. Hij staat in de lijst met zijn sigil. `EXPORT` is een pakket. Raku voegt het automatisch toe. Het bevat de namen met `is export`. De geëxporteerde `hello` staat dus in `EXPORT`. Die naam staat niet apart in het pakket.

</div>

{% include nav.html %}
