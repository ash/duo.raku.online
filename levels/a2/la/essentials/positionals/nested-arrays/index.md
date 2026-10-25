---
title: Nidificata array
---

{% include menu.html %}

Tabula quaelibet alia data continere potest. Etiam alias tabulas continere potest. Hae sunt tabulae nidificatae. Claudibus quadratis utere, ut ostendas ubi quaeque tabula nidificata incipit et desinit:

```raku
my @table = 
    [1, 2, 3, 4],
    [10, 20, 30, 40],
    [100, 200, 300, 400];
```

Etiam aliud par claudium addere potes. Ea tabulam exteriorem summi gradus circumdant. Proximum exemplum eandem structuram datorum habet ac prius.

```raku
my @table = [
    [1, 2, 3, 4],
    [10, 20, 30, 40],
    [100, 200, 300, 400]
];
```

Ut rem interiorem obtineas, plures indices adde. Tot adde quot requiris. Cum quoque pari claudium quadratorum, uno gradu profundius descendis:

```raku
say @table[0][3]; # Imprimit 4
say @table[2][1]; # Imprimit 200 
```

{% include nav.html %}
