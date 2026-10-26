---
title: The solution of ’A closure in a q string‘
---

{% include menu.html %}

Here is one possible solution.

## Code

```raku
my $x = 10;
say q:c/$x squared is {$x ** 2}/;
```

🦋 You can find the source code in the file [closure-quote.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/quoting/closure-quote.raku).

## Output

```
$x squared is 100
```

## Comments

1. The `q` form usually keeps all text as it is. The `:c` (closure) adverb turns on interpolation of `{ … }` code inside it. Inside the braces, `$x` is real code, so `{$x ** 2}` gives `100`.

1. The `$x` outside the braces stays exactly as written. This is because the scalar adverb `:s` is *not* turned on. This is the whole point of having one adverb for each feature. You get code in the string without also turning on `$`-interpolation.

1. You can combine adverbs. If you add `:s` as well, the first `$x` is interpolated too. Now both features are on at the same time:

```raku
my $x = 10;
say q:c:s/$x squared is {$x ** 2}/; # 10 squared is 100
```

{% include nav.html %}
