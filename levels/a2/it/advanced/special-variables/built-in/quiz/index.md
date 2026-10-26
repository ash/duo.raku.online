---
title: Quiz — Variabili speciali
---

{% include menu.html %}

Quale variabile predefinita contiene gli argomenti da riga di comando del programma?

{:.quiz}
0 | `$*ARGS`
1 | `@*ARGS`
0 | `@*ARGV`
0 | `%*ENV`

{% include quiz.html %}

<div class="extended-explanation">

Gli argomenti da riga di comando arrivano come una *lista*. Quindi la variabile ha il sigillo `@`. È anche dinamica, quindi ha il twigil `*`. Il risultato è `@*ARGS`. `%*ENV` è l'hash dell'ambiente. Non contiene gli argomenti. `@*ARGV` è il nome in Perl. Raku non lo usa.

</div>

{% include nav.html %}
