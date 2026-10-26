---
title: Quiz — Speciales variabiles
translations_gpt:
---

{% include menu.html %}

In qua variabili inbuilta argumenta lineae imperandi programmatis invenire potes?

{:.quiz}
0 | `$*ARGS`
1 | `@*ARGS`
0 | `@*ARGV`
0 | `%*ENV`

{% include quiz.html %}

<div class="extended-explanation">

Argumenta lineae imperandi ut *series* adveniunt. Itaque variabilis sigillum `@` et twigil dynamicum `*` habet: `@*ARGS`. `%*ENV` est mappa ambitus, non argumenta. `@*ARGV` est forma Perl, et Raku hoc nomine non utitur.

</div>

{% include nav.html %}
