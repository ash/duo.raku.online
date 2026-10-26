---
title: 'Quiz — Quoting adverbs'
---

{% include menu.html %}

What does the following program print?

```raku
my $price = 5;
say qq:!s{costs $price};
```

{:.quiz}
0 | costs 5
1 | costs $price
0 | costs
0 | costs {5}

{% include quiz.html %}

<div class="extended-explanation">

`qq` usually interpolates scalars, but an adverb with a `!` turns a feature *off*. Here, `:!s` turns off scalar interpolation. So `$price` stays exactly as written and is not replaced by `5`.

</div>

{% include nav.html %}
