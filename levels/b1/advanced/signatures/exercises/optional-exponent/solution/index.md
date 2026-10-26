---
title: The solution of ’An optional exponent‘
---

{% include menu.html %}

Here is one possible solution.

## Code

```raku
sub power($base, $exp?) {
    $base ** ($exp // 2)
}

say power(5);
say power(5, 3);
```

🦋 You can find the source code in the file [optional-exponent.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/signatures/optional-exponent.raku).

## Output

```
25
125
```

## Comments

1. The `?` after `$exp` makes the parameter optional. So you can call `power` with only the base.

1. When `$exp` is left out, it is undefined, and `//` gives the fallback value `2`. So `power(5)` squares the base and gets `25`. With an exponent, as in `power(5, 3)`, that value is used instead. The result is `125`.

{% include nav.html %}
