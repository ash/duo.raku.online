---
title: Postfix forms of if and unless
---

{% include menu.html %}

Sometimes a simple statement depends on a condition. Raku has a very easy way to write this. You do not need a separate block of code. Just put `if` or `unless` right after the statement. In Raku, these are called _statement modifiers_.

```raku
say 'Good afternoon' if $hours > 12;

say 'All systems work' unless $broken;
```

{% include nav.html %}
