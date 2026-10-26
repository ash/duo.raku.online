---
title: The solution of ’How many digits‘
---

{% include menu.html %}

Here is one possible solution.

## Code

```raku
say (2 ** 1000).chars;
```

🦋 You can find the source code in the file [big-factorial.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/integers/big-factorial.raku).

## Output

```
302
```

## Comments

1. Raku calculates `2 ** 1000` exactly. It does not round the number or overflow, because integers have arbitrary precision.

1. `chars` is usually a string method. When you call it on an integer, it first turns the number into decimal text. Then it counts the characters. There is no minus sign and no decimal point here. So the number of characters is exactly the number of digits, `302`.

{% include nav.html %}
