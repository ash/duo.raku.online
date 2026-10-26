---
title: 'Quiz — Date arithmetic'
---

{% include menu.html %}

What does the following program print?

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

If you add an integer, the date moves forward by that many days. It goes into the next month automatically. Five days after 28 January 2026 is 2 February. That is the last three days of January (29, 30, 31) and then two more.

</div>

{% include nav.html %}
