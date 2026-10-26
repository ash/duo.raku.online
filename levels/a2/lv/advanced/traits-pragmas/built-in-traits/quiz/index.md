---
title: Viktorīna — Īpašības
---

{% include menu.html %}

Apakšprogramma grib **mainīt izsaucēja mainīgo** caur parametru. Kura īpašība to ļauj?

{:.quiz}
1 | `is rw`
0 | `is copy`
0 | `is default`
0 | none — parameters are writable by default

{% include quiz.html %}

<div class="extended-explanation">

Parasti parametrs ir tikai lasāms. Tāpēc parastam parametram jūs nevarat piešķirt jaunu vērtību. `is rw` savieno parametru ar paša izsaucēja mainīgo. Tāpēc izmaiņa apakšprogrammas iekšienē ir redzama ārpusē. `is copy` strādā citādi. Tā dod jums *kopiju*, ko jūs varat mainīt. Izsaucēja mainīgais paliek tāds pats.

</div>

{% include nav.html %}
