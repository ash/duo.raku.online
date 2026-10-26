---
title: Quiz — Distributies
translations_gpt:
---

{% include menu.html %}

Welk bestand beschrijft een Raku-distributie, met de naam, de versie en wat ze levert?

{:.quiz}
0 | `README.md`
1 | `META6.json`
0 | `Makefile`
0 | `distribution.cfg`

{% include quiz.html %}

<div class="extended-explanation">

`META6.json` beschrijft een distributie. Het is een JSON-bestand in de hoofdmap van de distributie. De sleutel `provides` koppelt elke modulenaam aan het bronbestand. De sleutel `depends` noemt de andere distributies die de distributie nodig heeft.

</div>

{% include nav.html %}
