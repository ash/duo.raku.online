---
title: Quiz — Distributies
translations_gpt:
---

{% include menu.html %}

Een bestand bevat de naam en de versie van een Raku-distributie. Het zegt ook wat de distributie levert. Welk bestand is het?

{:.quiz}
0 | `README.md`
1 | `META6.json`
0 | `Makefile`
0 | `distribution.cfg`

{% include quiz.html %}

<div class="extended-explanation">

Het bestand `META6.json` beschrijft een distributie. Het is een JSON-bestand in de hoofdmap. De sleutel `provides` koppelt elke modulenaam aan zijn bronbestand. De sleutel `depends` noemt de andere distributies die de distributie nodig heeft.

</div>

{% include nav.html %}
