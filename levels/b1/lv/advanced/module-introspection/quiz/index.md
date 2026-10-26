---
title: Viktorīna — Stash
translations_gpt:
---

{% include menu.html %}

Modulis `Greeting` eksportē `hello` un definē `our $version`. Ko atgriež `Greeting::.keys.sort`?

{:.quiz}
1 | ($version EXPORT)
0 | ($version)
0 | ($version &hello)
0 | (hello version)

{% include quiz.html %}

<div class="extended-explanation">

`$version` ir moduļa `our` mainīgais, un tas ir uzskaitīts ar savu sigilu. `EXPORT` ir pakotne, ko Raku automātiski pievieno `is export` nosaukumiem. Tāpēc eksportētais `hello` parādās tur, nevis kā atsevišķs nosaukums pakotnē.

</div>

{% include nav.html %}
