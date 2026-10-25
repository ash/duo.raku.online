---
title: Postfix forms of if and unless
---

{% include menu.html %}

Sometimes you want a simple statement to run only under a certain condition. For this, Raku has a very handy solution. You do not need to create a separate block of code. Just put `if` or `unless` right after the statement. In Raku, these constructs are called _statement modifiers_.

```raku
say 'Good afternoon' if $hours > 12;

say 'All systems work' unless $broken;
```

{% include nav.html %}
