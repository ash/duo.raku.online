---
title: Quiz — Praefixae sententiae
---

{% include menu.html %}

Quid hoc programma imprimit?

```raku
my $v;
quietly {
    say $v + 10;
}
```

{:.quiz}
0 | Monitum, deinde 10
1 | 10
0 | Nil
0 | 0

{% include quiz.html %}

<div class="extended-explanation">

`$v` indefinitus est. Cum `10` ad eum addis, Raku `0` pro `$v` adhibet. Itaque resultatum est `10`. Plerumque etiam admonitio est: “uninitialized value”. Sed praefixum `quietly` eam celat. Itaque programma solum `10` imprimit.

</div>

{% include nav.html %}
