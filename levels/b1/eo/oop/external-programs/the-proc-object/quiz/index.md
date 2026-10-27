---
title: Kvizo — La objekto Proc
translations_gpt:
---

{% include menu.html %}

Kion presas la jena programo?

```raku
my $proc = run 'sh', '-c', 'exit 2', :out;
$proc.out.slurp(:close);
say $proc.exitcode;
```

{:.quiz}
0 | 0
1 | 2
0 | True
0 | eraron

{% include quiz.html %}

<div class="extended-explanation">

`.exitcode` estas la entjero, kiun la programo redonis. Ĉi tie oni diris al la ŝelo `exit 2`, do ĝi estas `2`. La programo ne ĵetas. La malsukcesa `Proc` estas konservita en `$proc` kaj kontrolita per `.exitcode`. Rigardi la rezulton validas kiel trakti ĝin. Escepto okazus nur, se malsukcesa `Proc` estus forĵetita sen kontrolo.

</div>

{% include nav.html %}
