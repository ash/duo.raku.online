---
title: Quiz — Lo Stash
translations_gpt:
---

{% include menu.html %}

Il modulo `Greeting` esporta `hello`. Ha anche `our $version`. Cosa restituisce `Greeting::.keys.sort`?

{:.quiz}
1 | ($version EXPORT)
0 | ($version)
0 | ($version &hello)
0 | (hello version)

{% include quiz.html %}

<div class="extended-explanation">

`$version` è la variabile `our` del modulo. È nella lista con il suo sigillo. `EXPORT` è un package. Raku lo aggiunge automaticamente. Contiene i nomi con `is export`. Quindi la subroutine esportata `hello` è in `EXPORT`. Non è un nome a parte nel package.

</div>

{% include nav.html %}
