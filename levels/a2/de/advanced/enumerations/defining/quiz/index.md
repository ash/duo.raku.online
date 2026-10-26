---
title: Quiz — Aufzählungen
---

{% include menu.html %}

Was gibt dieses Programm aus?

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

Jede Konstante hat eine Zahl. Die Zahlen beginnen bei null und folgen der Reihenfolge der Liste. Also ist `red` die `0`, `green` die `1` und `blue` die `2`. Beim Rechnen funktionieren die Konstanten wie diese Zahlen. Also ist `green + blue` gleich `1 + 2`. Das ist `3`.

</div>

{% include nav.html %}
