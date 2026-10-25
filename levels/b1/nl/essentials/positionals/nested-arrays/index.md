---
title: Geneste arrays
---

{% include menu.html %}

Arrays kunnen elke andere data bevatten, ook andere arrays. Om aan te geven waar elke geneste array begint en eindigt, gebruik je vierkante haken:

```raku
my @table = 
    [1, 2, 3, 4],
    [10, 20, 30, 40],
    [100, 200, 300, 400];
```

Je kunt ook nog een paar haken rond de array op het hoogste niveau zetten. Dit voorbeeld toont dezelfde datastructuur als het vorige.

```raku
my @table = [
    [1, 2, 3, 4],
    [10, 20, 30, 40],
    [100, 200, 300, 400]
];
```

Om de items binnenin te krijgen, voeg je zoveel indices toe als je nodig hebt. Elk paar vierkante haken brengt je een niveau dieper in de structuur:

```raku
say @table[0][3]; # Print 4
say @table[2][1]; # Print 200 
```

{% include nav.html %}
