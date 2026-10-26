---
title: The solution of ’Compare values‘
---

{% include menu.html %}

Here is one way to solve the task.

## Code

```raku
use Test;

is 'a'.uc, 'A', 'uppercase';

done-testing;
```

🦋 You can find the source code in the file [compare-values.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/testing/compare-values.raku).

## Output

```
ok 1 - uppercase
1..1
```

## Comments

1. `is` compares two values. `'a'.uc` is the value that you get. `'A'` is the value that you expect.

1. The values are the same, so the test passes. If the test fails, `is` prints both values.

{% include nav.html %}
