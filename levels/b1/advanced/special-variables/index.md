---
title: Special and dynamic variables
---

{% include menu.html %}

A variable name in Raku can have a second mark after the sigil. This mark is called a _twigil_. The twigil tells you where the variable lives and how Raku finds it. For example, it shows if the variable has a dynamic scope. Or it shows that the variable comes from the compiler or belongs to an object.

This section explains twigils. Then it looks closely at the most useful kind, _dynamic_ variables. Raku looks them up through the call stack, not by the usual lexical scope. Finally, it gives an overview of the special variables that Raku defines for you.

{% include nav.html %}
