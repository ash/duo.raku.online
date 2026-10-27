---
title: 'Quiz — Het Proc-object'
translations_gpt:
---

{% include menu.html %}

Wat drukt dit programma af?

```raku
my $proc = run 'sh', '-c', 'exit 2', :out;
$proc.out.slurp(:close);
say $proc.exitcode;
```

{:.quiz}
0 | 0
1 | 2
0 | True
0 | een fout

{% include quiz.html %}

<div class="extended-explanation">

`.exitcode` is het gehele getal dat het programma teruggaf. Hier kreeg de shell het commando `exit 2`. Dus is het getal `2`. Het programma werpt geen exceptie. Het stopt dus niet met een fout. Het programma bewaart de mislukkende `Proc` in `$proc`. Daarna kijkt het ernaar met `.exitcode`. Naar het resultaat kijken telt als het afhandelen ervan. Je krijgt alleen in één geval een exceptie. Dat is als je een mislukkende `Proc` zonder controle weggooit.

</div>

{% include nav.html %}
