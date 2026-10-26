---
title: Viktorīna — Distribūcijas
translations_gpt:
---

{% include menu.html %}

Kurš fails apraksta Raku distribūciju, tās nosaukumu, versiju un to, ko tā nodrošina?

{:.quiz}
0 | `README.md`
1 | `META6.json`
0 | `Makefile`
0 | `distribution.cfg`

{% include quiz.html %}

<div class="extended-explanation">

`META6.json` apraksta distribūciju. Tas ir JSON fails distribūcijas augšējā direktorijā. Tā atslēga `provides` saista katru moduļa nosaukumu ar tā pirmkoda failu. Atslēga `depends` uzskaita citas distribūcijas, kas tai vajadzīgas.

</div>

{% include nav.html %}
