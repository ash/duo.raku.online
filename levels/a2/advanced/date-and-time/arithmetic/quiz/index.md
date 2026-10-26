---
title: 'Quiz — Date arithmetic'
---

{% include menu.html %}

What does this program print?

```raku
say Date.new(2026, 1, 28) + 5;
```

{:.quiz}
1 | 2026-02-02
0 | 2026-01-33
0 | 2026-02-05
0 | 2026-02-03

{% include quiz.html %}

<div class="extended-explanation">

You add an integer. The date moves forward by that many days. It goes into the next month by itself. Look at five days after 28 January 2026. January has three more days: 29, 30, and 31. Then come two more days. So the answer is 2 February.

</div>

{% include nav.html %}
