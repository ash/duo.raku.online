---
title: The solution of ’A first test‘
---

{% include menu.html %}

Here is one way to solve the task.

## Code

```raku
use Test;

ok 'Raku'.chars == 4, 'Raku has four letters';

done-testing;
```

🦋 You can find the source code in the file [a-first-test.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/testing/a-first-test.raku).

## Output

```
ok 1 - Raku has four letters
1..1
```

## Comments

1. The condition `'Raku'.chars == 4` is true. So `ok` passes.

1. `done-testing` prints the plan line `1..1`. It says that one test ran.

{% include nav.html %}
