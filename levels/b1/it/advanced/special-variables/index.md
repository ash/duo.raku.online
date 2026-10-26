---
title: Variabili speciali e dinamiche
---

{% include menu.html %}

Il nome di una variabile in Raku può avere un secondo segno dopo il sigillo. Questo segno si chiama _twigil_. Il twigil ti dice dove vive la variabile e come Raku la trova. Per esempio, mostra se la variabile ha uno scope dinamico. Oppure mostra che la variabile viene dal compilatore o appartiene a un oggetto.

Questa sezione spiega i twigil. Poi esamina da vicino il tipo più utile, le variabili _dinamiche_. Raku le cerca attraverso lo stack delle chiamate, non con il normale scope lessicale. Infine, dà una panoramica delle variabili speciali che Raku definisce per te.

{% include nav.html %}
