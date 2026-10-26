---
title: The solution of ’An optional exponent‘
---

{% include menu.html %}

Here is one way to solve the task.

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

1. The `?` after `$exp` makes it optional. So you can call `power` with only the base.

1. If you leave out `$exp`, it is undefined. Then `//` gives the value `2`. So `power(5)` squares the base and gets `25`. Now look at `power(5, 3)`. Here, the exponent is there. So the code uses it and gets `125`.

{% include nav.html %}
