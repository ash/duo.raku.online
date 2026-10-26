---
title: Running tests
---

{% include menu.html %}

A single test file is just a Raku program. So you can run it directly:

```
raku t/01-basic.rakutest
```

It prints its TAP output on the screen. When you have more than a file or two, you need a _test runner_. It runs a whole directory of tests and gives a summary of the results. The runner for Raku is `prove6`:

```
prove6 t/
```

This runs every test file under `t/` and reports how many files and tests passed. At the end, there is one overall result, pass or fail. This is much easier to read than the raw TAP from each file.

If a distribution has a `META6.json`, the module tool can run its tests for you:

```
zef test .
```

`zef test` finds the `t/` directory, runs the tests and reports the result. Exactly the same thing happens automatically before a distribution is installed. So tests have two jobs. You run them with `prove6` while you develop. The ecosystem runs them to check a distribution before anyone installs it.

> Test files have a `.rakutest` (or `.t`) extension. They usually have numbers in their names, as in `t/01-basic.rakutest`.

{% include nav.html %}
