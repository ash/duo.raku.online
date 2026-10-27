---
title: Quiz — Obiectum Proc
translations_gpt:
---

{% include menu.html %}

Quid hoc programma imprimit?

```raku
my $proc = run 'sh', '-c', 'exit 2', :out;
$proc.out.slurp(:close);
say $proc.exitcode;
```

{:.quiz}
0 | 0
1 | 2
0 | True
0 | errorem

{% include quiz.html %}

<div class="extended-explanation">

`.exitcode` est numerus integer quem programma reddidit. Hic interpres imperatum `exit 2` accepit. Itaque numerus est `2`. Programma exceptionem non iacit. Itaque cum errore non sistit. Programma `Proc` deficiens in `$proc` servat. Deinde id per `.exitcode` inspicit. Effectum inspicere idem est ac id tractare. Exceptionem solum uno casu accipis. Hoc fit cum `Proc` deficiens sine probatione abicis.

</div>

{% include nav.html %}
