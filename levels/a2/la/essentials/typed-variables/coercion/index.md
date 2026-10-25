---
title: Typus conversio pro typis variabiles
---

{% include menu.html %}

Vincula typorum sunt regulae pro typis variabilium. Hae regulae satis strictae sunt. Exempli gratia, sume variabilem cum typo `Int`. Valorem `Num` ei assignare non potes. Hoc verum est etiam si valor numerus integer est:

```raku
my Int $x = 42;
# $x = 42e1; # Error
```

Ut valorem convertas, [unam ex methodis](/la/essentials/coercion/#topics-in-this-section) adhibe.

```raku
my Int $x = 42;
$x = 42e1.Int;
$x = Int(42e1);
```

{% include nav.html %}
