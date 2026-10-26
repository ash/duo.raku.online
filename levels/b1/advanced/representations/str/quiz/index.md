---
title: 'Quiz — gist and Str'
---

{% include menu.html %}

What does the following program print?

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

`.Str` gives the plain string form. Here, the elements are just joined with spaces, without brackets: `1 2 3`. You get the form with brackets, `[1 2 3]`, from `.gist`, and so also from `say @a`.

</div>

{% include nav.html %}
