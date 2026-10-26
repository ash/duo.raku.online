---
title: The solution of ’Wrapping around‘
---

{% include menu.html %}

Here is one way to solve the task.

## Code

```raku
my uint8 $u = 250;
$u += 10;
say $u;

my uint8 $v = 0;
$v--;
say $v;
```

🦋 You can find the source code in the file [wrap-around.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/native-types/wrap-around.raku).

## Output

```
4
255
```

## Comments

1. A `uint8` goes from `0` to `255`. That is 256 different values. In fact, all arithmetic on it is modulo 256. The result is the remainder after division by 256.

1. Normally, `250 + 10` is `260`. But `260` does not fit. So the value wraps around. It starts again from the bottom and lands at `260 - 256 = 4`. Overflow is not only one step over the top. Any result outside the range comes back into the range.

1. The other direction also overflows. In an unsigned type, a decrement of `0` cannot give `-1`. So the value wraps around to the largest value, `255`.

{% include nav.html %}
