---
title: 'Quiz — Enum values'
---

{% include menu.html %}

What does this program print?

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

`.value` gives the number behind a constant. But `.key` gives its *name* as a string. So `Tue.key` is `Tue`. The number `2` of this constant does not matter here.

</div>

{% include nav.html %}
