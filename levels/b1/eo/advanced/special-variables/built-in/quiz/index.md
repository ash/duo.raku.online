---
title: Kvizo — Specialaj variabloj
translations_gpt:
---

{% include menu.html %}

En kiu enkonstruita variablo vi povas trovi la komandliniajn argumentojn de la programo?

{:.quiz}
0 | `$*ARGS`
1 | `@*ARGS`
0 | `@*ARGV`
0 | `%*ENV`

{% include quiz.html %}

<div class="extended-explanation">

La komandliniaj argumentoj venas kiel *listo*. Do la variablo havas la sigelon `@` kaj la dinamikan tvigilon `*`: `@*ARGS`. `%*ENV` estas la hako de la medio kaj ne la argumentoj. `@*ARGV` estas la maniero, kiel Perl skribas ĝin, kaj Raku ne uzas ĉi tiun nomon.

</div>

{% include nav.html %}
