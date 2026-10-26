---
title: Comparisons and plans
---

{% include menu.html %}

The `Test` module has more than `ok` and `is`. It has comparisons for different kinds of values. These are the most useful ones:

* `is` — checks that two values are equal (as strings or numbers)
* `is-deeply` — checks that two data structures are exactly equal, and their types too
* `like` — checks that a string matches a regex
* `isnt` — passes when two values are **not** equal

Use `is-deeply` for arrays, hashes and data inside other data. It compares the structure and the type exactly:

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

`is` turns the values into strings. Then it compares them, but not very strictly. `is-deeply` is different. With it, the structures must really match. Note that `done-testing` puts the plan `1..1` at the end, after the check.

`done-testing` can count the tests for you. But you can also give the number at the start, with `plan`. This helps with one problem. Sometimes a test file stops too early. Then it skips some checks without any message:

```raku
use Test;

plan 2;
ok True,  'first';
ok 1 < 2, 'second';
```

Now the plan is **first**. It comes before the results:

```
1..2
ok 1 - first
ok 2 - second
```

Here you can see how `plan` is different from `done-testing`. `plan` prints the count `1..2` at the top, before any checks run. `done-testing` prints it at the very end. In any case, with `plan 2`, the run expects exactly two tests. If fewer or more tests run, the whole set of tests fails. Use `plan` if the number of tests is fixed and you know it. Use `done-testing` if it is easier to let the test module count.

{% include nav.html %}
