---
title: Tipaj limigoj
---

{% include menu.html %}

Raku havas tiel nomatan gradan tipsistemon. Tio signifas, ke vi povas uzi tipojn nur tie, kie vi volas. Kutime vi ne bezonas doni la tipon de variablo. Sed foje vi eble volas limigi la tipon de variablo. Tiam donu la tipon tiel:

```raku
my Int $var = 42;
```

Nun vi povas asigni alian entjeran valoron al `$var`. Sed vi ne povas meti ĉenon en ĝin. Vi eĉ ne povas meti glitkoman nombron en ĝin. Se vi provas, vi ricevas escepton:

```raku
my Int $var = 42;
$var = '314E-2';
```

La programo donas ĉi tiun eraron:

    Type check failed in assignment to $var; expected Int but got Str ("314E-2")
      in block <unit> at t.raku line 2

{% include nav.html %}
