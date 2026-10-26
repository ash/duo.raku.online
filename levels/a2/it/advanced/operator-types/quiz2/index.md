---
title: Quiz — Prefisso o postfisso
---

{% include menu.html %}

Hai visto `++` *dopo* una variabile. Lì è un postfisso. Puoi anche scriverlo *prima* di una variabile. Qual è la categoria di `++` in `++$x`?

```raku
my $x = 5;
say ++$x;
```

{:.quiz}
1 | prefix
0 | postfix
0 | infix
0 | postcircumfix

{% include quiz.html %}

<div class="extended-explanation">

Solo la *posizione* decide la categoria. In `++$x`, l'operatore sta prima del suo unico operando. Quindi è un operatore **prefisso**. Scrivi lo stesso `++` dopo l'operando, come in `$x++`. Allora è un postfisso. Tutte e due le forme aggiungono 1 a `$x`. La forma prefissa restituisce il nuovo valore. Quindi il programma stampa `6`.

</div>

{% include nav.html %}
