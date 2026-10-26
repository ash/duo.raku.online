---
title: Quiz — Pragma
---

{% include menu.html %}

Il pragma `strict` di Raku è attivo di default. Cosa succede se assegni un valore a una variabile che non hai mai dichiarato, come in `$x = 42`?

{:.quiz}
1 | È un errore di compilazione
0 | Crea silenziosamente `$x`
0 | Stampa un avviso ma viene eseguito
0 | Imposta `$x` a `Nil`

{% include quiz.html %}

<div class="extended-explanation">

`strict` è attivo di default. Ti chiede di dichiarare prima ogni variabile con `my`. Quindi `$x = 42` senza `my` non si compila. L'errore è *Variable '$x' is not declared*. Se disattivi il pragma con `no strict`, l'assegnazione funziona.

</div>

{% include nav.html %}
