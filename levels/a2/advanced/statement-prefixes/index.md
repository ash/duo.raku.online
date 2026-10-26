---
title: Statement prefixes
---

{% include menu.html %}

A _statement prefix_ is a keyword. You put it before a statement or a block. It changes how the statement or block runs. You already know one prefix: `gather`. It collects everything that a block gives to `take`. This section shows a few more prefixes for general use.

Prefixes can do several things. With `do`, a block becomes an expression with a value. With `eager` and `lazy`, you choose when Raku computes a list. It can compute it at once or only when needed. With `sink`, code runs only for its side effects. A side effect is an extra action of the code, like printing. With `quietly`, code runs and does not show its warnings.

{% include nav.html %}
