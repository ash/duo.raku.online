---
title: Contexts
---

{% include menu.html %}

A value in Raku can behave differently, depending on the _context_ where you use it. For example, the same array can act as a number, which is its length. It can act as a string, with its elements joined together. Or it can act as a truth value, which shows whether the array is empty. It all depends on what the code around it asks for.

Context explains a lot of Raku that may otherwise look surprising. It explains why `+@array` is a number. It explains why an array in a scalar acts as a single item. And it explains why `if @array` checks whether the array is empty. This section covers the main contexts.

{% include nav.html %}
