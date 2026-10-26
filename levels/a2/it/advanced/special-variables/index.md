---
title: Variabili speciali e dinamiche
---

{% include menu.html %}

Il nome di una variabile Raku può avere un secondo segno dopo il sigillo. Questo segno è un _twigil_. Il twigil ti dice dove vive la variabile. Ti dice anche come Raku la trova. Per esempio, la variabile può essere dinamica. Oppure il compilatore può dartela. Oppure può appartenere a un oggetto.

Questa sezione spiega i twigil. Poi guarda da vicino il tipo più utile: le variabili _dinamiche_. Raku trova una variabile normale con il suo scope lessicale. È il blocco dove la dichiari. Raku trova una variabile dinamica in un altro modo. Cerca nello stack delle chiamate. Lo stack delle chiamate mostra quale codice ha chiamato il codice attuale. Alla fine, la sezione mostra le variabili speciali che Raku ti dà.

{% include nav.html %}
