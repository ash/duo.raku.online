---
title: Convertendo generibus utendo constructoris formis
---

{% include menu.html %}

Modus similis est novum obiectum generis necessarii creare. Ad hoc constructorem eius vocas, qui idem nomen habet ac genus. Exempli gratia:

```raku
my $n = Int('1.23E4');
say $n;      # 12300
say $n.WHAT; # (Int)
```

Hic catena cum numero puncti mobilis ad integrum convertitur.

{% include nav.html %}
