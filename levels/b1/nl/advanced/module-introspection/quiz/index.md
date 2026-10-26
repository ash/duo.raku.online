---
title: Quiz — De Stash
translations_gpt:
---

{% include menu.html %}

De `Greeting`-module exporteert `hello` en definieert `our $version`. Wat geeft `Greeting::.keys.sort` terug?

{:.quiz}
1 | ($version EXPORT)
0 | ($version)
0 | ($version &hello)
0 | (hello version)

{% include quiz.html %}

<div class="extended-explanation">

`$version` is de `our`-variabele van de module, en hij staat in de lijst met zijn sigil. `EXPORT` is een pakket dat Raku automatisch toevoegt voor de `is export`-namen. De geëxporteerde `hello` staat dus daar, niet als aparte naam in het pakket.

</div>

{% include nav.html %}
