---
title: Geneste arrays
---

{% include menu.html %}

Een array kan elke andere soort data bevatten. Hij kan zelfs andere arrays bevatten. Dat zijn geneste arrays. Gebruik vierkante haken om te laten zien waar elke geneste array begint en eindigt:

```raku
my @table = 
    [1, 2, 3, 4],
    [10, 20, 30, 40],
    [100, 200, 300, 400];
```

Je kunt ook nog een paar haken toevoegen. Die staan rond de buitenste array, op het hoogste niveau. Het volgende voorbeeld heeft dezelfde datastructuur als hiervoor.

```raku
my @table = [
    [1, 2, 3, 4],
    [10, 20, 30, 40],
    [100, 200, 300, 400]
];
```

Om een item binnenin te krijgen, voeg je meer indices toe. Voeg er zoveel toe als je nodig hebt. Met elk paar vierkante haken ga je een niveau dieper:

```raku
say @table[0][3]; # Print 4
say @table[2][1]; # Print 200 
```

{% include nav.html %}
