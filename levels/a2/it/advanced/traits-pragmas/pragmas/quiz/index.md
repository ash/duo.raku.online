---
title: Quiz — Pragma
---

{% include menu.html %}

In Raku, il pragma `strict` è attivo di default. Non dichiari una variabile, ma le assegni un valore. Per esempio, `$x = 42`. Cosa succede?

{:.quiz}
1 | È un errore di compilazione
0 | Crea silenziosamente `$x`
0 | Stampa un avviso ma viene eseguito
0 | Imposta `$x` a `Nil`

{% include quiz.html %}

<div class="extended-explanation">

`strict` è attivo di default. Con questo pragma, devi prima dichiarare ogni variabile con `my`. Così `$x = 42` senza `my` non si compila. L'errore è *Variable '$x' is not declared*. Con `no strict`, il pragma è disattivato. Allora l'assegnazione funziona.

</div>

{% include nav.html %}
