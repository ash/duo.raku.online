---
title: Nidificata array
---

{% include menu.html %}

Tabulae quaelibet alia data continere possunt, etiam alias tabulas. Ut notes ubi quaeque tabula nidificata incipiat et desinat, claudibus quadratis utere:

```raku
my @table = 
    [1, 2, 3, 4],
    [10, 20, 30, 40],
    [100, 200, 300, 400];
```

Etiam aliud par claudium circa tabulam summi gradus ponere potes. Hoc exemplum eandem structuram datorum ostendit ac prius.

```raku
my @table = [
    [1, 2, 3, 4],
    [10, 20, 30, 40],
    [100, 200, 300, 400]
];
```

Ut res interiores obtineas, tot indices adde quot requiris. Quodque par claudium quadratorum te uno gradu profundius in structuram ducit:

```raku
say @table[0][3]; # Imprimit 4
say @table[2][1]; # Imprimit 200 
```

{% include nav.html %}
