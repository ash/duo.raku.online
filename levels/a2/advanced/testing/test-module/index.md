---
title: The Test module
---

{% include menu.html %}

To get the tools for testing, write `use Test`. The simplest check is `ok`. It passes when its condition is true. Each check can also have a description:

```raku
use Test;

ok 1 == 1, 'one equals one';
ok 2 > 1,  'two is greater';

done-testing;
```

Run this program. It prints the result in the standard format for tests. This format is called _TAP_:

```
ok 1 - one equals one
ok 2 - two is greater
1..2
```

For each check that passes, you see `ok` with its number and description. A check that fails shows `not ok`. The last line, `1..2`, is the _plan_. It says how many tests ran. The call to `done-testing` at the end prints this plan automatically.

Sometimes you expect a certain value. Then `is` is clearer than `ok`. If the test fails, `is` shows two values. It shows the value that you expect and the value that you get:

```raku
use Test;

is 2 + 2, 4, 'addition works';

done-testing;
```

This prints `ok 1 - addition works`. Now let us see how `is` reports a failure. Give `is` a wrong expected value:

```raku
use Test;

is 2 + 2, 5, 'addition works';

done-testing;
```

Now the check fails. The output shows exactly what is wrong:

```
not ok 1 - addition works
# Failed test 'addition works'
# at test.raku line 3
# expected: '5'
#      got: '4'
1..1
# You failed 1 test of 1
```

The `not ok` line shows the failure. Under it, more lines explain the problem. They show the value that you expect and the value that you get. So, when you need a certain value, `is` helps more than `ok` alone.

With `ok`, `is` and `done-testing`, you can already write a useful test file. The next topic shows [the other comparisons](/advanced/testing/comparisons).

{% include nav.html %}
