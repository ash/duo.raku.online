---
title: Compatatio contra intervallum
---

{% include menu.html %}

Hic sunt intervallum et variabilis. Variabilis valorem integrum habet:

```raku
my $r = 1..10;
my $v = 7;
```

Utere _operatore callido-comparationis_ `~~`. Probat an valor in intervallo sit:

```
dic $v ~~ $r;
```

In hoc exemplo condicio est `True`. Itaque programma `True` imprimit.

{% include nav.html %}
