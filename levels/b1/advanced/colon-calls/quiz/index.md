---
title: 'Quiz — The colon call'
---

{% include menu.html %}

What does the following program print?

```raku
say 'programming'.substr: 0, 3;
```

{:.quiz}
1 | pro
0 | program
0 | ing
0 | (0 3)

{% include quiz.html %}

<div class="extended-explanation">

The colon takes the *whole* rest of the statement as the argument list. So `substr: 0, 3` is the same as `substr(0, 3)`, and both arguments are passed. It starts at index `0` and takes `3` characters, which gives `pro`.

</div>

{% include nav.html %}
