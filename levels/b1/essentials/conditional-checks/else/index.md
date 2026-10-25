---
title: The else block
---

{% include menu.html %}

An `if` block can have an `else` block after it. Raku runs the `else` block when the condition is not met.

```raku
my $t = 36.6;
if 35.5 < $t < 37.5 {
    say 'You are fine.';
}
else {
    say 'Call a doctor, maybe?';
}
```

You cannot use the `else` block on its own. There is a better option for this called [`unless`](../unless). We will look at it in just a minute.

{% include nav.html %}
