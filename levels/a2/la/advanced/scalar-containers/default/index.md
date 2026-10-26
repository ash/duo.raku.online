---
title: Valores praedefiniti
---

{% include menu.html %}

Interdum variabilem scalarem creas. Sed nondum valorem ei assignas. Continens tamen valorem servat. Hic est valor defectus eius. Valor defectus a typo variabilis pendet.

Hoc programma Raku optimo modo non adhibet. Sed ideam ostendit:

```raku
my $int;
say $int + 5;
```

Output `5` habet. Fortasse hoc exspectabas. Fortasse putabas: valor defectus `$int` est `0`. Sed programma etiam monitum imprimit:

```
Use of uninitialized value $int of type Any in numeric context
  in block <unit> at t.raku line 2
5
```

Hoc dubium duobus modis tollere potes. Valorem directe assignare potes:

```raku
my $int = 0;
say $int + 5; # 5
```

Aut valorem defectus cum tratto `is default` dare potes:

```raku
my $int is default(0);
say $int + 5; # 5
```

Valor defectus non necessario zero est. Quilibet valor esse potest quem bonum putas. Exempli gratia:

```raku
my $int is default(1);
say $int + 5; # 6
```

{% include nav.html %}
