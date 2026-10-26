---
title: Quiz — Distribuzioni
translations_gpt: 'Quiz — Distribuzioni'
---

{% include menu.html %}

Un file contiene il nome e la versione di una distribuzione Raku. Dice anche cosa fornisce la distribuzione. Qual è questo file?

{:.quiz}
0 | `README.md`
1 | `META6.json`
0 | `Makefile`
0 | `distribution.cfg`

{% include quiz.html %}

<div class="extended-explanation">

Il file `META6.json` descrive una distribuzione. È un file JSON nella directory principale. La sua chiave `provides` collega ogni nome di modulo al suo file sorgente. La chiave `depends` elenca le altre distribuzioni che servono alla distribuzione.

</div>

{% include nav.html %}
