---
title: 'Kvizo — `try`'
translations_gpt:
---

{% include menu.html %}

Kion presas la jena programo?

```raku
my $r = try {
    die 'Boom!';
    say 'inside';
};

say 'outside';
```

{:.quiz}
1 | outside
0 | inside
0 | inside poste outside
0 | Boom!
0 | eraron

{% include quiz.html %}

<div class="extended-explanation">

Du aferoj okazas ĉi tie. Unue, `die` tuj haltigas la reston de la bloko `try`. Do la linio `say 'inside'` neniam ruliĝas, kaj nenio el la bloko estas presata. Due, `try` kaptas la escepton, do la programo mem ne haltas. Ĝi daŭras post la bloko, kaj `say 'outside'` ruliĝas kiel kutime. Do la sola presita linio estas `outside`. Se vi rigardus, vi vidus, ke `$r` estas nedifinita. La mesaĝo `Boom!` atendus en `$!`.

</div>

{% include nav.html %}
