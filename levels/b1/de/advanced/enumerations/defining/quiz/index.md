---
title: Quiz — Aufzählungen
---

{% include menu.html %}

Was gibt das folgende Programm aus?

```raku
enum Colour <red green blue>;
say green + blue;
```

{:.quiz}
1 | 3
0 | greenblue
0 | (green blue)
0 | an error

{% include quiz.html %}

<div class="extended-explanation">

Jede Konstante steht für eine Zahl. Die Zahlen beginnen bei null, in der Reihenfolge der Liste: `red` ist `0`, `green` ist `1`, `blue` ist `2`. Wenn du mit ihnen rechnest, verhalten sich die Konstanten wie diese Zahlen. Also ist `green + blue` gleich `1 + 2`, und das ergibt `3`.

</div>

{% include nav.html %}
