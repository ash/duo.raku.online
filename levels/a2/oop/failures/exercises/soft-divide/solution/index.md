---
title: The solution of ’Soft reciprocal‘
---

{% include menu.html %}

Here is one way to solve the task.

## Code

```raku
sub reciprocal($n) {
    fail 'no reciprocal of zero' if $n == 0;
    return 1 / $n;
}

say reciprocal(4);
say reciprocal(0) // 'undefined';
```

🦋 You can find the source code in the file [soft-divide.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/failures/soft-divide.raku).

## Output

```
0.25
undefined
```

## Comments

1. `reciprocal(4)` works as usual. It returns `1 / 4`. This is `0.25`.

1. `reciprocal(0)` calls `fail`. So it returns a `Failure`. A `Failure` is an undefined value with an error inside. The `//` operator looks at its left side. If the left side is undefined, `//` returns its right side. So we get the fallback, `undefined`.

1. Using `//` counts as handling the failure. `//` only checks if the value is defined. It does not use the value. So the `Failure` stays soft. Raku never throws it as a real exception.

{% include nav.html %}
