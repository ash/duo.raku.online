---
title: Contesti
---

{% include menu.html %}

Un valore in Raku può comportarsi in modo diverso, a seconda del _contesto_ in cui lo usi. Per esempio, lo stesso array può agire come un numero, che è la sua lunghezza. Può agire come una stringa, con i suoi elementi uniti insieme. Oppure può agire come un valore di verità, che mostra se l'array è vuoto. Tutto dipende da quello che chiede il codice intorno all'array.

Il contesto spiega molte cose di Raku che altrimenti potrebbero sembrare sorprendenti. Spiega perché `+@array` è un numero. Spiega perché un array in uno scalare agisce come un singolo elemento. E spiega perché `if @array` controlla se l'array è vuoto. Questa sezione tratta i contesti principali.

{% include nav.html %}
