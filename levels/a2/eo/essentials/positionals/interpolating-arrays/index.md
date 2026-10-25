---
title: Interpolante tabelojn
---

{% include menu.html %}

Vi povas interpoli elementojn de tabelo en duoble-cititaj ŝnuroj. Skribu ilin same kiel en la programkodo: `@data[1]`. Por interpoli la tutan tabelon, aldonu paron de malplenaj krampoj: `@data[]`. Ĉi tiu programo montras, kiel tio funkcias:

```raku
my @data = 10, 20, 30;

say "First: @data[0], last: @data[1]";
say "All elements: @data[]";
```

La programo presas la datumojn, kiujn ni volas:

```console
$ raku t.raku 
First: 10, last: 20
All elements: 10 20 30
```

{% include nav.html %}
