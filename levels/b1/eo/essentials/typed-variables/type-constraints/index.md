---
title: Tipaj limigoj
---

{% include menu.html %}

Raku havas tiel nomatan gradan tipsistemon. En plej multaj kazoj, vi ne bezonas zorgi pri la tipo de variablo. Sed foje vi eble volas limigi variablon al unu tipo. Vi povas fari tion, se vi donas la tipon, kiel montrite sube:

```raku
my Int $var = 42;
```

Nun vi povas asigni alian entjeran valoron al `$var`. Sed se vi provas meti ĉenon en ĝin, vi ricevas escepton. La sama okazas eĉ kun glitkoma nombro:

```raku
my Int $var = 42;
$var = '314E-2';
```

Ĉi tiu programo donas la sekvan eraron:

    Type check failed in assignment to $var; expected Int but got Str ("314E-2")
      in block <unit> at t.raku line 2

{% include nav.html %}
