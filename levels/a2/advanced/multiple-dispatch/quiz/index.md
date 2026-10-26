---
title: 'Quiz — Dispatch with `where`'
---

{% include menu.html %}

What does this program print?

```raku
multi sub f(Int $n where $n %% 2) { say 'even' }
multi sub f(Int $n)               { say 'odd' }

f(4);
```

{:.quiz}
1 | even
0 | odd
0 | both
0 | nothing

{% include quiz.html %}

<div class="extended-explanation">

The condition `where $n %% 2` is true for `4`. So Raku chooses the more specific candidate. It prints `even`. The other candidate has only `Int`. It takes all values that fail the condition.

</div>

{% include nav.html %}
