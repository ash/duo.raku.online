---
title: Arrays anidados
---

{% include menu.html %}

Los arreglos pueden contener cualquier otro dato, y esto incluye otros arreglos. Para marcar dónde empieza y termina cada arreglo anidado, usa corchetes:

```raku
my @table = 
    [1, 2, 3, 4],
    [10, 20, 30, 40],
    [100, 200, 300, 400];
```

También puedes poner un par más de corchetes alrededor del arreglo de nivel superior. Este ejemplo muestra la misma estructura de datos que el anterior.

```raku
my @table = [
    [1, 2, 3, 4],
    [10, 20, 30, 40],
    [100, 200, 300, 400]
];
```

Para obtener los elementos internos, añade tantos índices como necesites. Cada par de corchetes te lleva un nivel más abajo en la estructura:

```raku
say @table[0][3]; # Imprime 4
say @table[2][1]; # Imprime 200 
```

{% include nav.html %}
