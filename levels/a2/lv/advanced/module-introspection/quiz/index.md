---
title: Viktorīna — Stash
translations_gpt:
---

{% include menu.html %}

Modulis `Greeting` eksportē `hello`. Tam ir arī `our $version`. Ko atgriež `Greeting::.keys.sort`?

{:.quiz}
1 | ($version EXPORT)
0 | ($version)
0 | ($version &hello)
0 | (hello version)

{% include quiz.html %}

<div class="extended-explanation">

`$version` ir moduļa `our` mainīgais. Tas ir sarakstā ar savu sigilu. `EXPORT` ir pakotne. Raku to pievieno automātiski. Tajā ir nosaukumi ar `is export`. Tāpēc eksportētais `hello` ir pakotnē `EXPORT`. Tas nav atsevišķs nosaukums pakotnē.

</div>

{% include nav.html %}
