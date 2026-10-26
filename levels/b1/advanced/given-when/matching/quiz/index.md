---
title: 'Quiz — `when`'
---

{% include menu.html %}

What does the following program print?

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

After a `when` block matches, it automatically *breaks out* of the `given`. So there is no fall-through. `5` meets the first condition, `$_ > 0`, so `positive` is printed. The second `when 5` is never reached, although it would also match.

</div>

{% include nav.html %}
