---
title: Quiz — Speciale variabelen
---

{% include menu.html %}

In welke ingebouwde variabele vind je de commandoregelargumenten van het programma?

{:.quiz}
0 | `$*ARGS`
1 | `@*ARGS`
0 | `@*ARGV`
0 | `%*ENV`

{% include quiz.html %}

<div class="extended-explanation">

De commandoregelargumenten komen als een *lijst*. Dus heeft de variabele de `@`-sigil en de dynamische `*`-twigil: `@*ARGS`. `%*ENV` is de hash met omgevingsvariabelen en niet de argumenten. `@*ARGV` is hoe Perl het schrijft, en Raku gebruikt die naam niet.

</div>

{% include nav.html %}
