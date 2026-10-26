---
title: Quiz — Speciale variabelen
---

{% include menu.html %}

Welke ingebouwde variabele bewaart de commandoregelargumenten van het programma?

{:.quiz}
0 | `$*ARGS`
1 | `@*ARGS`
0 | `@*ARGV`
0 | `%*ENV`

{% include quiz.html %}

<div class="extended-explanation">

De commandoregelargumenten komen als een *lijst*. Dus heeft de variabele de sigil `@`. Hij is ook dynamisch, dus hij heeft de twigil `*`. Het resultaat is `@*ARGS`. `%*ENV` is de hash met de omgevingsvariabelen. Daarin staan de argumenten niet. `@*ARGV` is de naam in Perl. Raku gebruikt die niet.

</div>

{% include nav.html %}
