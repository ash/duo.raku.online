---
title: The solution of ’A closure in a q string‘
---

{% include menu.html %}

Here is one way to solve the task.

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

1. The `q` form usually keeps the text as it is. The `:c` (closure) adverb changes this. It turns on interpolation of `{ … }` code in the text. Inside the braces, `$x` is real code. So `{$x ** 2}` gives `100`.

1. The `$x` outside the braces stays exactly as it is. This is because the scalar adverb `:s` is *not* on. That is the whole idea of one adverb for each feature. You get code in the text. But you do not also turn on interpolation of `$` variables.

1. You can use several adverbs together. Add `:s` too. Then the first `$x` is also interpolated. Now both features are on:

```raku
my $x = 10;
say q:c:s/$x squared is {$x ** 2}/; # 10 squared is 100
```

{% include nav.html %}
