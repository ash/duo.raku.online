---
title: Contesti
---

{% include menu.html %}

In Raku, un valore può comportarsi in modi diversi. Dipende dal _contesto_. Il contesto è il posto dove usi il valore. Per esempio, un array può agire come un numero. Questo numero è la sua lunghezza. Lo stesso array può agire come una stringa. Allora i suoi elementi sono uniti insieme. Può anche agire come `True` o `False`. Questo mostra se l'array è vuoto o se ha elementi. Il codice intorno all'array decide cosa ottieni.

Il contesto spiega molte cose in Raku. Senza di esso, queste cose sembrano strane. Per esempio, perché `+@array` è un numero? Perché un array in uno scalare agisce come un solo elemento? E perché `if @array` controlla se l'array è vuoto? Questa sezione mostra i contesti principali.

{% include nav.html %}
