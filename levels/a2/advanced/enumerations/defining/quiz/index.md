---
title: 'Quiz — Enumerations'
---

{% include menu.html %}

What does this program print?

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

Each constant has a number. The numbers start from zero and follow the order of the list. So `red` is `0`, `green` is `1`, and `blue` is `2`. In arithmetic, the constants work as these numbers. So `green + blue` is `1 + 2`. That is `3`.

</div>

{% include nav.html %}
