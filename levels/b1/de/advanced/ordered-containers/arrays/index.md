---
title: Arrays
---

{% include menu.html %}

Ein Array ist ein geordneter Container, und seine Elemente sind auch Skalar-Container.

```raku
my @array = 100, 200, 300;
my @letters = 'a', 'b', 'c';
```

Das Sigil `@` bedeutet, dass sich so eine Variable wie ein `Positional`-Objekt verhält. Deshalb kannst du mit Indizes einzelne Elemente lesen:

```raku
say @array[1];   # 200
say @letters[2]; # c
```

Jedes Element ist ein Skalar-Container, also kannst du ihm einen neuen Wert zuweisen. Das geht genauso wie bei einer einzelnen Skalarvariable:

```raku
my @array = 100, 200, 300;
@array[0] = 10;
say @array; # [10 200 300]
```

Du kannst auch einen Wert eines anderen Typs zuweisen, zum Beispiel:

```raku
my @array = 100, 200, 300;
@array[0] = 'ten';
say @array; # [ten 200 300]
```

Das macht Arrays _veränderbar_, das heißt, du kannst sie ändern. Jeder Platz ist ein Container, der einen neuen Wert bekommen kann. Im nächsten Thema wirst du sehen, dass sich [Listen](/de/advanced/ordered-containers/lists) anders verhalten.

{% include nav.html %}
