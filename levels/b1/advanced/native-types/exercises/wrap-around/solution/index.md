---
title: The solution of ’Wrapping around‘
---

{% include menu.html %}

Here is one possible solution.

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

1. A `uint8` goes from `0` to `255`, so it has 256 different values. In practice, arithmetic on it is done modulo 256.

1. `250 + 10` would be `260`, which does not fit. So the value wraps around and lands `260 - 256 = 4` above the bottom. This means overflow is not only about going one step over the top. Any result outside the range is brought back into it.

1. Going the other way also causes overflow. In an unsigned type, decrementing `0` cannot give `-1`. So it wraps around to the maximum, `255`.

{% include nav.html %}
