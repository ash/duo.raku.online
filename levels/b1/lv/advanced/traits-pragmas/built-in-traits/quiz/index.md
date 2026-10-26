---
title: Viktorīna — Īpašības
---

{% include menu.html %}

Kura īpašība ļauj apakšprogrammai **mainīt izsaucēja mainīgo** caur parametru?

{:.quiz}
1 | `is rw`
0 | `is copy`
0 | `is default`
0 | none — parameters are writable by default

{% include quiz.html %}

<div class="extended-explanation">

Parametrs pēc noklusējuma ir tikai lasāms, tāpēc parastam parametram nevar piešķirt vērtību. `is rw` sasaista parametru ar paša izsaucēja mainīgo. Tāpēc izmaiņa apakšprogrammas iekšienē ir redzama arī ārpusē. `is copy` turpretī dotu jums *kopiju*, ko varat mainīt. Izsaucēja mainīgais paliktu neskarts.

</div>

{% include nav.html %}
