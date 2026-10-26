---
title: Contexts
---

{% include menu.html %}

In Raku, a value can behave in different ways. It depends on the _context_. The context is the place where you use the value. For example, an array can act as a number. This number is its length. The same array can act as a string. Then its elements are joined together. It can also act as `True` or `False`. This shows if the array is empty or not. The code around the array decides which one you get.

Context explains many things in Raku. Without it, these things look strange. For example, why is `+@array` a number? Why does an array in a scalar act as one item? And why does `if @array` check if the array is empty? This section shows the main contexts.

{% include nav.html %}
