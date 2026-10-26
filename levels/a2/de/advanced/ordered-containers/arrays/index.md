---
title: Arrays
---

{% include menu.html %}

Ein Array ist ein geordneter Container. Jedes Element eines Arrays ist auch ein Skalar-Container.

```raku
my @array = 100, 200, 300;
my @letters = 'a', 'b', 'c';
```

Das Sigil `@` zeigt: Die Variable funktioniert als `Positional`-Objekt. So kannst du jedes Element über seinen Index bekommen:

```raku
say @array[1];   # 200
say @letters[2]; # c
```

Jedes Element ist ein Skalar-Container. Also kannst du ihm einen neuen Wert zuweisen. Das geht genau wie bei einer normalen Skalarvariable:

```raku
my @array = 100, 200, 300;
@array[0] = 10;
say @array; # [10 200 300]
```

Du kannst auch einen Wert von einem anderen Typ zuweisen. Zum Beispiel:

```raku
my @array = 100, 200, 300;
@array[0] = 'ten';
say @array; # [ten 200 300]
```

Deshalb sind Arrays _veränderbar_. Das heißt, du kannst sie ändern. Jeder Platz in einem Array ist ein Container. Er kann einen neuen Wert bekommen. [Listen](/de/advanced/ordered-containers/lists) sind anders. Das siehst du im nächsten Thema.

{% include nav.html %}
