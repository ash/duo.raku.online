---
title: 'Quiz — Slurpy parameters'
---

{% include menu.html %}

What does this program print?

```raku
sub f($first, *@rest) {
    say @rest.elems;
}

f('a', 'b', 'c');
```

{:.quiz}
1 | 2
0 | 3
0 | 1
0 | 0

{% include quiz.html %}

<div class="extended-explanation">

The fixed parameters get their values before the slurpy one. `$first` takes `'a'`. Only the two other arguments, `'b'` and `'c'`, go into `@rest`. So for this array, `.elems` gives `2`.

</div>

{% include nav.html %}
