---
title: Afstemmen tegen een reeks
---

{% include menu.html %}

Hier zijn een bereik en een variabele. De variabele heeft een geheel getal als waarde:

```raku
my $r = 1..10;
my $v = 7;
```

Gebruik de _smart-match operator_ `~~`. Hij controleert of de waarde in het bereik ligt:

```
say $v ~~ $r;
```

In dit voorbeeld is de conditie `True`. Dus het programma drukt `True` af.

{% include nav.html %}
