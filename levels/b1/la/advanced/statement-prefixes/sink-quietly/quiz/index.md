---
title: Quiz — Praefixae sententiae
---

{% include menu.html %}

Quid sequens programma imprimit?

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

Cum `10` ad `$v` indefinitum addis, Raku eum ut `0` tractat et `10` dat. Plerumque etiam admonitio “uninitialized value” esset. Sed praefixum `quietly` eam celat, itaque solum `10` imprimitur.

</div>

{% include nav.html %}
