---
title: Arrays anidados
---

{% include menu.html %}

Un arreglo puede contener cualquier otro dato. Incluso puede contener otros arreglos. Estos son arreglos anidados. Usa corchetes para mostrar dónde empieza y termina cada arreglo anidado:

```raku
my @table = 
    [1, 2, 3, 4],
    [10, 20, 30, 40],
    [100, 200, 300, 400];
```

También puedes añadir un par más de corchetes. Van alrededor del arreglo exterior, el de nivel superior. El siguiente ejemplo tiene la misma estructura de datos que antes.

```raku
my @table = [
    [1, 2, 3, 4],
    [10, 20, 30, 40],
    [100, 200, 300, 400]
];
```

Para obtener un elemento interno, añade más índices. Añade tantos como necesites. Con cada par de corchetes, bajas un nivel más:

```raku
say @table[0][3]; # Imprime 4
say @table[2][1]; # Imprime 200 
```

{% include nav.html %}
