---
title: Interpolante tabelojn
---

{% include menu.html %}

Vi povas interpoli elementojn de tabelo en duoble-cititaj ŝnuroj. Skribu ilin tiel, kiel vi faras en la programo mem: `@data[1]`. Por interpoli la tutan tabelon, aldonu paron de malplenaj krampoj: `@data[]`. La sekva programo montras, kiel tio funkcias:

```raku
my @data = 10, 20, 30;

say "First: @data[0], last: @data[1]";
say "All elements: @data[]";
```

Ĉi tiu programo presas la datumojn, kiujn ni petis:

```console
$ raku t.raku 
First: 10, last: 20
All elements: 10 20 30
```

{% include nav.html %}
