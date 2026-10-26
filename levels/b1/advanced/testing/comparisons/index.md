---
title: Comparisons and plans
---

{% include menu.html %}

Besides `ok` and `is`, the `Test` module has comparisons for different kinds of values. Here are the most useful ones:

* `is` — checks whether two values are equal (as strings or numbers)
* `is-deeply` — checks that two data structures are exactly equal, including their types
* `like` — checks that a string matches a regex
* `isnt` — passes when two values are **not** equal

`is-deeply` is the right choice for arrays, hashes and nested data. It compares both the structure and the type exactly:

```raku
use Test;

my @reversed = (1, 2, 3).reverse;
is-deeply @reversed, [3, 2, 1], 'reversed';

done-testing;
```

This prints:

```
ok 1 - reversed
1..1
```

`is` would turn the values into strings and compare them loosely. But `is-deeply` requires that the structures really match. Note that `done-testing` puts the plan `1..1` at the end, after the check.

You do not have to let `done-testing` count the tests for you. Instead, you can give the number at the start with `plan`. This protects you from a test file that stops early and quietly skips some checks:

```raku
use Test;

plan 2;
ok True,  'first';
ok 1 < 2, 'second';
```

This time, the plan comes **first**, before the results:

```
1..2
ok 1 - first
ok 2 - second
```

This is the difference from `done-testing` that you can see. `plan` prints the count `1..2` at the top, before any checks run. `done-testing` prints it at the very end instead. In any case, with `plan 2` the run expects exactly two tests. If fewer or more tests run, the test suite is reported as failing. Use `plan` when the number of tests is fixed and known. Use `done-testing` when it is easier to let the test framework count.

{% include nav.html %}
