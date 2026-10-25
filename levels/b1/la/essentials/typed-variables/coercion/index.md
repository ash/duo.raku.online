---
title: Typus conversio pro typis variabiles
---

{% include menu.html %}

Vincula typorum satis stricta sunt. Exempli gratia, valorem `Num` variabili ut `Int` declaratae assignare non potes. Hoc verum est etiam si valor numerus integer est:

```raku
my Int $x = 42;
# $x = 42e1; # Error
```

Utere [una ex methodis](/la/essentials/coercion/#topics-in-this-section) ut valorem ad typum rectum convertas.

```raku
my Int $x = 42;
$x = 42e1.Int;
$x = Int(42e1);
```

{% include nav.html %}
