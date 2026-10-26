---
title: Quiz — Fasciculi
translations_gpt:
---

{% include menu.html %}

Quid hoc programma imprimit?

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

`$x` cum `my` creata est. Itaque lexicalis est. Numquam in spatium nominum `M` intrat. Ideo via `$M::x` nihil invenit. Valorem indefinitum dat. Itaque `.defined` est `False`. Solum variabilis `our` hoc modo attingi potest.

</div>

{% include nav.html %}
