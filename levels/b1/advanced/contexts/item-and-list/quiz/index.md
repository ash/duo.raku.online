---
title: 'Quiz — Item context'
---

{% include menu.html %}

What does the following program print?

```raku
my @a = 1, 2, 3;
my $n = 0;
$n++ for $(@a);
say $n;
```

{:.quiz}
0 | 3
1 | 1
0 | 0
0 | 6

{% include quiz.html %}

<div class="extended-explanation">

The `$( … )` contextualiser sets item context. So the array is a single value and not a list of elements. That is why the `for` loop sees one item and runs its body only once. So `$n` ends at `1`. Without `$( )`, the loop would run three times.

</div>

{% include nav.html %}
