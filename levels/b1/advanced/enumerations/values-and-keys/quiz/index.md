---
title: 'Quiz — Enum values'
---

{% include menu.html %}

What does the following program print?

```raku
enum Day (Mon => 1, Tue => 2);
say Tue.key;
```

{:.quiz}
1 | Tue
0 | 2
0 | 1
0 | Mon

{% include quiz.html %}

<div class="extended-explanation">

`.value` returns the number behind a constant. `.key`, however, returns its *name* as a string. So `Tue.key` is `Tue`, and the number `2` that it was given does not matter.

</div>

{% include nav.html %}
