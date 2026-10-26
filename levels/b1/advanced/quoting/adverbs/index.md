---
title: Quoting adverbs
---

{% include menu.html %}

You can adjust the behaviour of a quoting construct with _adverbs_. Each quoting feature has its own adverb, which turns that one feature on or off. The features are interpolating scalars, running closures (code in braces), and processing backslashes. So you can start from `q` or `Q`. Then you add back exactly the features you need.

Some common adverbs:

* `:s` / `:scalar` — interpolate scalar variables (`$x`)
* `:c` / `:closure` — interpolate code in `{ … }`
* `:b` / `:backslash` — handle backslash escapes such as `\n`

Add one adverb to `q` to turn on a single feature. For example, allow code in braces but nothing else:

```raku
say q/result: {3 * 4}/;   # result: {3 * 4}  — plain q leaves the block untouched
say q:c/result: {3 * 4}/; # result: 12        — :c runs the block
```

With plain `q`, the `{ 3 * 4 }` is printed exactly as written. Only `:c` makes the block run and inserts its value. A `$variable`, however, would still stay as it is. Note the `/…/` delimiters here. You could also use `{…}` as delimiters, and the code would still compile. The compiler counts the nested braces correctly. But then the inner `{ 3 * 4 }` would be just part of the text, not a closure. So `:c` would leave it as it is. So if the text contains a `{ … }` block, choose a delimiter other than `{…}`. Then the closure really runs. You can also add scalar interpolation to `Q`, which normally changes nothing:

```raku
my $name = 'Anna';
say Q:s{Hi, $name}; # Hi, Anna
```

With a `!`, adverbs also turn features **off**. Here is how to use `qq` but keep `$` as it is:

```raku
my $price = 5;
say qq:!s{costs $price dollars}; # costs $price dollars
```

`qq` is the same as `Q` with all the interpolation adverbs turned on. `q` is the same as `Q` with a smaller set of them. Between these two ends, the adverbs let you control every detail.

{% include nav.html %}
