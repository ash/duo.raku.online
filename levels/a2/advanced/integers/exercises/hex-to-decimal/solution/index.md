---
title: The solution of ’Hex to decimal‘
---

{% include menu.html %}

Here is one way to solve the task.

## Code

```raku
my $n = :16<1A>;

say $n;
say $n.base(16);
```

🦋 You can find the source code in the file [hex-to-decimal.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/integers/hex-to-decimal.raku).

## Output

```
26
1A
```

## Comments

1. The radix form `:16<1A>` reads `1A` as a number in base 16. Its value is `1 × 16 + 10 = 26`. Now the variable `$n` holds this value as a normal integer.

1. `$n.base(16)` turns the integer back into a string in base 16. The result is `1A` again. So reading in a base and printing in a base are opposites.

{% include nav.html %}
