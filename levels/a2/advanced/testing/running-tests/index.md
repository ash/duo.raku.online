---
title: Running tests
---

{% include menu.html %}

One test file is just a Raku program. So you can run it like any program:

```
raku t/01-basic.rakutest
```

It prints its TAP output on the screen. But you may have more than one or two files. Then you need a _test runner_. It runs all the tests in a directory. Then it gives a short summary of the results. The test runner of Raku is `prove6`:

```
prove6 t/
```

This runs each test file under `t/`. It shows how many files and tests passed. At the end, it gives one result for everything: pass or fail. This is much easier to read than the raw TAP from each file.

A distribution may have a `META6.json`. Then the module tool runs its tests for you:

```
zef test .
```

`zef test` finds the `t/` directory. It runs all the tests and shows the result. The same thing happens automatically before someone installs a distribution. So tests have two jobs. You run them with `prove6` while you work on your code. And the ecosystem runs them before anyone installs a distribution. In this way, it checks the distribution.

> Test files have the extension `.rakutest` or `.t`. Usually, their names start with a number, for example, `t/01-basic.rakutest`.

{% include nav.html %}
