---
title: 'Quiz — `when`'
---

{% include menu.html %}

What does this program print?

```raku
given 5 {
    when $_ > 0 { say 'positive' }
    when 5      { say 'five' }
}
```

{:.quiz}
1 | positive
0 | five
0 | both lines
0 | nothing

{% include quiz.html %}

<div class="extended-explanation">

When a `when` block matches, it automatically *leaves* the `given`. Raku does not go on to the next `when`. `5` meets the first condition, `$_ > 0`. So the program prints `positive`. The second `when 5` also fits. But Raku never gets to it.

</div>

{% include nav.html %}
