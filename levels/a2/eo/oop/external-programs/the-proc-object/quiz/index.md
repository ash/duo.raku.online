---
title: Kvizo — La objekto Proc
translations_gpt:
---

{% include menu.html %}

Kion presas ĉi tiu programo?

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

`.exitcode` estas la entjero, kiun la programo redonis. Ĉi tie, la ŝelo ricevis la komandon `exit 2`. Do la nombro estas `2`. La programo ne ĵetas escepton. Do ĝi ne haltas kun eraro. La programo tenas la malsukcesan `Proc` en `$proc`. Poste ĝi rigardas ĝin per `.exitcode`. Rigardi la rezulton validas kiel trakti ĝin. Vi ricevas escepton nur en unu kazo. Tio estas, kiam vi forĵetas malsukcesan `Proc` sen kontrolo.

</div>

{% include nav.html %}
