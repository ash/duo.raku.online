---
title: 'Quiz — Quoting adverbs'
---

{% include menu.html %}

What does this program print?

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

Usually, `qq` interpolates scalars. But an adverb with a `!` turns a feature *off*. Here, `:!s` turns off scalar interpolation. So `$price` stays exactly as it is. Raku does not replace it with `5`.

</div>

{% include nav.html %}
