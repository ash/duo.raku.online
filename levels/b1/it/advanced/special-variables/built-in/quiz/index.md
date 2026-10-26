---
title: Quiz — Variabili speciali
---

{% include menu.html %}

In quale variabile predefinita trovi gli argomenti da riga di comando del programma?

{:.quiz}
0 | `$*ARGS`
1 | `@*ARGS`
0 | `@*ARGV`
0 | `%*ENV`

{% include quiz.html %}

<div class="extended-explanation">

Gli argomenti da riga di comando arrivano come una *lista*. Quindi la variabile ha il sigillo `@` e il twigil dinamico `*`: `@*ARGS`. `%*ENV` è l'hash dell'ambiente e non gli argomenti. `@*ARGV` è come lo scrive Perl, e Raku non usa questo nome.

</div>

{% include nav.html %}
