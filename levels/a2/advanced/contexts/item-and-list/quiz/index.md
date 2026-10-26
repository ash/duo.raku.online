---
title: 'Quiz — Item context'
---

{% include menu.html %}

What does this program print?

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

The contextualiser `$( … )` sets item context. So the array is one single value, not a list of elements. The `for` loop sees one item. So it runs its body only once. At the end, `$n` is `1`. Without `$( )`, the loop runs three times.

</div>

{% include nav.html %}
