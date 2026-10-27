---
title: 'Quiz — Het Proc-object'
translations_gpt:
---

{% include menu.html %}

Wat drukt het volgende programma af?

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

`.exitcode` is het gehele getal dat het programma teruggaf. Hier kreeg de shell de opdracht `exit 2`, dus is het `2`. Het programma werpt geen exceptie. De mislukkende `Proc` wordt in `$proc` bewaard en met `.exitcode` gecontroleerd. Naar het resultaat kijken telt als het afhandelen ervan. Een exceptie zou alleen ontstaan als een mislukkende `Proc` zonder controle weggegooid werd.

</div>

{% include nav.html %}
