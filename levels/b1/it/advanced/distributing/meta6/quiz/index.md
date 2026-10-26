---
title: Quiz — Distribuzioni
translations_gpt: 'Quiz — Distribuzioni'
---

{% include menu.html %}

Quale file descrive una distribuzione Raku, con il suo nome, la versione e cosa fornisce?

{:.quiz}
0 | `README.md`
1 | `META6.json`
0 | `Makefile`
0 | `distribution.cfg`

{% include quiz.html %}

<div class="extended-explanation">

`META6.json` descrive una distribuzione. È un file JSON nella directory principale della distribuzione. La sua chiave `provides` collega ogni nome di modulo al suo file sorgente. La chiave `depends` elenca le altre distribuzioni di cui ha bisogno.

</div>

{% include nav.html %}
