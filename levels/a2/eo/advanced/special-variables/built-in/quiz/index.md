---
title: Kvizo — Specialaj variabloj
translations_gpt:
---

{% include menu.html %}

Kiu enkonstruita variablo tenas la komandliniajn argumentojn de la programo?

{:.quiz}
0 | `$*ARGS`
1 | `@*ARGS`
0 | `@*ARGV`
0 | `%*ENV`

{% include quiz.html %}

<div class="extended-explanation">

La komandliniaj argumentoj venas kiel *listo*. Do la variablo havas la sigelon `@`. Ĝi ankaŭ estas dinamika, do ĝi havas la tvigilon `*`. La rezulto estas `@*ARGS`. `%*ENV` estas la hako de la medio. Ĝi ne havas la argumentojn. `@*ARGV` estas la nomo en Perl. Raku ne uzas ĝin.

</div>

{% include nav.html %}
