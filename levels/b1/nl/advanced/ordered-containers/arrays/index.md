---
title: Arrays
---

{% include menu.html %}

Een array is een geordende container, en de elementen ervan zijn ook scalar containers.

```raku
my @array = 100, 200, 300;
my @letters = 'a', 'b', 'c';
```

De `@` sigil betekent dat zo'n variabele zich gedraagt als een `Positional` object. Daardoor kun je subscripts gebruiken om losse elementen te lezen:

```raku
say @array[1];   # 200
say @letters[2]; # c
```

Elk element is een scalar container, dus je kunt er een nieuwe waarde aan toekennen. Je doet dat op dezelfde manier als bij een losse scalar variabele:

```raku
my @array = 100, 200, 300;
@array[0] = 10;
say @array; # [10 200 300]
```

Je kunt ook een waarde van een ander type toekennen, bijvoorbeeld:

```raku
my @array = 100, 200, 300;
@array[0] = 'ten';
say @array; # [ten 200 300]
```

Dit maakt arrays _muteerbaar_, dat wil zeggen: veranderbaar. Elke plek is een container die een nieuwe waarde kan krijgen. In het volgende onderwerp zie je dat [lists](/nl/advanced/ordered-containers/lists) zich anders gedragen.

{% include nav.html %}
