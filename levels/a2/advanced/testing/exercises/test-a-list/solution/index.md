---
title: The solution of ’Plan two checks‘
---

{% include menu.html %}

Here is one way to solve the task.

## Code

```raku
use Test;

plan 2;

my @sorted = (3, 1, 2).sort;
is-deeply @sorted, [1, 2, 3], 'sorted';

is 10 % 3, 1, 'remainder';
```

🦋 You can find the source code in the file [test-a-list.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/testing/test-a-list.raku).

## Output

```
1..2
ok 1 - sorted
ok 2 - remainder
```

## Comments

1. `plan 2` gives the count before any test runs. So the line `1..2` comes first. The file may run a different number of checks. Then the whole set of tests fails. `done-testing` cannot protect you in this way.

1. `is-deeply` checks that the two lists are exactly equal, and their types too. Sorting `3, 1, 2` gives `1, 2, 3`. This matches.

1. `is` checks that two values are equal. If they are not, it shows both values. Here, `10 % 3` is `1`. This is the expected value. So the second test passes too.

{% include nav.html %}
