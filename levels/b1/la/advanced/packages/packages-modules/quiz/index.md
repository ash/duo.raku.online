---
title: Quiz — Fasciculi
translations_gpt:
---

{% include menu.html %}

Quid sequens programma imprimit?

```raku
module M {
    my $x = 5;
}

say $M::x.defined;
```

{:.quiz}
1 | False
0 | True
0 | 5
0 | Errorem

{% include quiz.html %}

<div class="extended-explanation">

`$x` cum `my` declarata est, itaque lexicalis est et numquam in spatium nominum `M` intrat. Ideo via `$M::x` nihil invenit, solum valorem indefinitum. Itaque `.defined` est `False`. Solum variabilis `our` hoc modo attingi posset.

</div>

{% include nav.html %}
