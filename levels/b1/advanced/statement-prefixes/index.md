---
title: Statement prefixes
---

{% include menu.html %}

A _statement prefix_ is a keyword that you put before a statement or block. It changes the way that the code runs. You have already seen one: `gather`, which collects everything that a block gives to `take`. This section shows a few more prefixes for general use.

With prefixes, you can do several things. You can turn a block into an expression that gives a value (`do`). You can decide when a list is computed: at once or on demand (`eager` and `lazy`). And you can run code only for its side effects (`sink`). Or you can run it with its warnings turned off (`quietly`).

{% include nav.html %}
