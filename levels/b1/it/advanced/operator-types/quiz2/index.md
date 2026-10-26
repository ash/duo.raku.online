---
title: Quiz — Prefisso o postfisso
---

{% include menu.html %}

Hai visto `++` *dopo* una variabile, come postfisso. Puoi anche scriverlo *prima* della variabile. A quale categoria appartiene `++` in `++$x`?

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

La categoria dipende solo dalla *posizione*. In `++$x`, l'operatore viene prima del suo unico operando, quindi è un operatore **prefisso**. Lo stesso identico `++` è un postfisso quando viene dopo, come in `$x++`. Entrambe le forme aumentano `$x` di uno. La forma prefissa restituisce il nuovo valore, quindi questo stampa `6`.

</div>

{% include nav.html %}
