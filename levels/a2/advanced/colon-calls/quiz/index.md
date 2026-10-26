---
title: 'Quiz — The colon call'
---

{% include menu.html %}

What does this program print?

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

The colon takes the *whole* rest of the statement. All of it becomes the list of arguments. So `substr: 0, 3` is the same as `substr(0, 3)`. Both arguments go to `substr`. It starts at index `0` and takes `3` characters. The result is `pro`.

</div>

{% include nav.html %}
