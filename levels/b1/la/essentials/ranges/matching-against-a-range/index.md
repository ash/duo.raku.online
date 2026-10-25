---
title: Compatatio contra intervallum
---

{% include menu.html %}

Cape intervallum et variabilem quae valorem integrum tenet:

```raku
my $r = 1..10;
my $v = 7;
```

_Operator callido-comparationis_ `~~` tibi permittit probare an valor intra intervallum sit:

```
dic $v ~~ $r;
```

In hoc exemplo condicio est `True`, itaque programma `True` imprimit.

{% include nav.html %}
