---
title: Arrays
---

{% include menu.html %}

Een array is een geordende container. Elk element van een array is ook een scalar container.

```raku
my @array = 100, 200, 300;
my @letters = 'a', 'b', 'c';
```

De `@` sigil laat zien dat de variabele werkt als een `Positional` object. Zo kun je elk element via zijn index krijgen:

```raku
say @array[1];   # 200
say @letters[2]; # c
```

Elk element is een scalar container. Dus je kunt er een nieuwe waarde aan toekennen. Het werkt net als bij een gewone scalar variabele:

```raku
my @array = 100, 200, 300;
@array[0] = 10;
say @array; # [10 200 300]
```

Je kunt ook een waarde van een ander type toekennen. Bijvoorbeeld:

```raku
my @array = 100, 200, 300;
@array[0] = 'ten';
say @array; # [ten 200 300]
```

Daarom zijn arrays _muteerbaar_. Dat betekent dat je ze kunt veranderen. Elke plek in een array is een container. Die kan een nieuwe waarde krijgen. [Lists](/nl/advanced/ordered-containers/lists) zijn anders. Dat zie je in het volgende onderwerp.

{% include nav.html %}
