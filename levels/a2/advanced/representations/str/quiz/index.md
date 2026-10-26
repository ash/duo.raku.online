---
title: 'Quiz — gist and Str'
---

{% include menu.html %}

What does this program print?

```raku
my @a = 1, 2, 3;
say @a.Str;
```

{:.quiz}
0 | [1 2 3]
1 | 1 2 3
0 | (1 2 3)
0 | 1, 2, 3

{% include quiz.html %}

<div class="extended-explanation">

`.Str` gives the plain string form. The elements are just joined with spaces. There are no brackets: `1 2 3`. The form with brackets, `[1 2 3]`, comes from `.gist`. So `say @a` prints it too.

</div>

{% include nav.html %}
