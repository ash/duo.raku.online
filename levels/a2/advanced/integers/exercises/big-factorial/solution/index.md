---
title: The solution of ’How many digits‘
---

{% include menu.html %}

Here is one way to solve the task.

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

1. Integers in Raku have no size limit. So Raku finds the exact value of `2 ** 1000`. It does not round the number. The number does not overflow.

1. Usually, `chars` is a method for strings. You can also call it on an integer. Then it first turns the number into text, in base 10. After that, it counts the characters. This number has no minus sign and no decimal point. So the number of characters is the number of digits: `302`.

{% include nav.html %}
