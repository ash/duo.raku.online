---
title: The solution of ’Plan two checks‘
---

{% include menu.html %}

Here is one possible solution.

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

1. `plan 2` gives the count before any test runs, so the `1..2` line comes first. If the file then ran a different number of checks, the test suite would fail. `done-testing` cannot give you this protection.

1. `is-deeply` checks that the two lists are exactly equal, including their types. Sorting `3, 1, 2` gives `1, 2, 3`, which matches.

1. `is` checks two values for simple equality. If the test fails, it shows both values. Here, `10 % 3` is `1`, which is the expected value. So the second test passes too.

{% include nav.html %}
