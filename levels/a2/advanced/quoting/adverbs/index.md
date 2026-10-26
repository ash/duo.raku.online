---
title: Quoting adverbs
---

{% include menu.html %}

You can change how a quoting construct works. For this, you use _adverbs_. A quoting construct has several features. For example, it can interpolate scalars. It can run code in braces. It can process backslashes. Each feature has its own adverb. The adverb turns this one feature on or off. So you can start from `q` or `Q`. Then you add back exactly the features you need.

Here are some common adverbs:

* `:s` / `:scalar` — put the values of scalar variables (`$x`) into the string
* `:c` / `:closure` — run the code in `{ … }` and put the result into the string
* `:b` / `:backslash` — handle backslash escapes, like `\n`

Add one adverb to `q`. Then `q` gets one feature. For example, let it run code, but nothing else:

```raku
say q/result: {3 * 4}/;   # result: {3 * 4}  — plain q leaves the block untouched
say q:c/result: {3 * 4}/; # result: 12        — :c runs the block
```

With plain `q`, Raku prints `{ 3 * 4 }` as it is. Only `:c` runs the block. Then Raku puts the result into the string. A `$variable` still stays as it is. Look at the delimiters here: `/…/`. Delimiters are the characters around the text. You can also use `{…}` as delimiters. There is no error, because the compiler counts the braces correctly. But then the inner `{ 3 * 4 }` is just a part of the text. It is not code. So `:c` does not run it, and it stays as it is. Does the text have a `{ … }` block? Then do not use `{…}` as delimiters. Use other delimiters. Then the code in the braces runs. You can also add scalar interpolation to `Q`. Without it, `Q` keeps all the text as it is:

```raku
my $name = 'Anna';
say Q:s{Hi, $name}; # Hi, Anna
```

Adverbs can also turn features **off**. For this, write a `!`. Here, we use `qq`, but `$` stays a normal character:

```raku
my $price = 5;
say qq:!s{costs $price dollars}; # costs $price dollars
```

`qq` is the same as `Q` with all interpolation adverbs on. `q` is the same as `Q` with fewer adverbs on. With the adverbs, you can choose every feature between these two ends.

{% include nav.html %}
