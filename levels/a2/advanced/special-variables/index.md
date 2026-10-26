---
title: Special and dynamic variables
---

{% include menu.html %}

A Raku variable name can have a second sign after the sigil. This sign is a _twigil_. The twigil tells you where the variable lives. It also tells you how Raku finds it. For example, the variable can be dynamic. Or the compiler can give it to you. Or it can belong to an object.

This section explains twigils. Then it looks closely at the most useful kind: _dynamic_ variables. Raku finds a normal variable by its lexical scope. This is the block where you declare it. Raku finds a dynamic variable in another way. It looks through the call stack. The call stack shows which code called the current code. Last, the section shows the special variables that Raku gives you.

{% include nav.html %}
