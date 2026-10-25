---
title: Afstemmen tegen een reeks
---

{% include menu.html %}

Neem een bereik en een variabele die een geheel getal bevat:

```raku
my $r = 1..10;
my $v = 7;
```

Met de _smart-match operator_ `~~` kun je controleren of de waarde binnen het bereik valt:

```
say $v ~~ $r;
```

In dit voorbeeld is de conditie `True`, dus het programma drukt `True` af.

{% include nav.html %}
