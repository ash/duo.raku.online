---
title: 'Kvizo — `try`'
translations_gpt:
---

{% include menu.html %}

Kion presas ĉi tiu programo?

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

Du aferoj okazas ĉi tie. Unue, `die` tuj haltigas la reston de la bloko `try`. Do la programo neniam atingas la linion `say 'inside'`. La programo presas nenion el la bloko. Due, `try` kaptas la escepton, la eraron de `die`. Do la programo mem ne haltas. Ĝi daŭras post la bloko. `say 'outside'` ruliĝas kiel kutime. Do la programo presas nur unu linion: `outside`. Vi ankaŭ povas rigardi `$r` kaj `$!`. `$r` estas nedifinita. La mesaĝo `Boom!` atendas en `$!`.

</div>

{% include nav.html %}
