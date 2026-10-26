---
title: Viktorīna — Distribūcijas
translations_gpt:
---

{% include menu.html %}

Vienā failā ir Raku distribūcijas nosaukums un versija. Tas arī pasaka, ko distribūcija nodrošina. Kurš fails tas ir?

{:.quiz}
0 | `README.md`
1 | `META6.json`
0 | `Makefile`
0 | `distribution.cfg`

{% include quiz.html %}

<div class="extended-explanation">

Fails `META6.json` apraksta distribūciju. Tas ir JSON fails augšējā direktorijā. Tā atslēga `provides` saista katru moduļa nosaukumu ar tā pirmkoda failu. Atslēga `depends` uzskaita citas distribūcijas, kas distribūcijai vajadzīgas.

</div>

{% include nav.html %}
