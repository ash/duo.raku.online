---
title: The solution of ’Hex to decimal‘
---

{% include menu.html %}

Here is one possible solution.

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

1. The radix form `:16<1A>` reads `1A` as a base-16 number. This is `1 × 16 + 10 = 26`. Now the variable `$n` holds a normal integer.

1. `$n.base(16)` turns that integer back into a base-16 string, which gives `1A` again. This confirms that reading a base and printing in a base are opposite operations.

{% include nav.html %}
