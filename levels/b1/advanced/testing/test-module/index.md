---
title: The Test module
---

{% include menu.html %}

You load the testing tools with `use Test`. The most basic check is `ok`, which passes when its condition is true. Each check can also take a description:

```raku
use Test;

ok 1 == 1, 'one equals one';
ok 2 > 1,  'two is greater';

done-testing;
```

When you run it, it prints this in the standard test format called _TAP_:

```
ok 1 - one equals one
ok 2 - two is greater
1..2
```

Each check that passes is shown as `ok` with its number and description. A failing check would show `not ok`. The last line, `1..2`, is the _plan_, which says how many tests ran. The `done-testing` call at the end prints this plan automatically.

When you expect a certain value, `is` is clearer than `ok`. If the test fails, `is` shows both the expected value and the actual value:

```raku
use Test;

is 2 + 2, 4, 'addition works';

done-testing;
```

This prints `ok 1 - addition works`. To see how `is` reports a problem, give it a wrong expected value:

```raku
use Test;

is 2 + 2, 5, 'addition works';

done-testing;
```

Now the check fails, and the output explains exactly what went wrong:

```
not ok 1 - addition works
# Failed test 'addition works'
# at test.raku line 3
# expected: '5'
#      got: '4'
1..1
# You failed 1 test of 1
```

The `not ok` line marks the failure. The lines below it show what was expected and what the program actually got. So when a certain value matters, `is` is more helpful than a plain `ok`.

`ok`, `is` and `done-testing` are already enough for a useful test file. The next topic adds [the other comparisons](/advanced/testing/comparisons).

{% include nav.html %}
