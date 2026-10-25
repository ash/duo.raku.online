---
title: The else block
---

{% include menu.html %}

After an `if` block, you can add an `else` block. Raku runs the `else` block when the condition is `False`.

```raku
my $t = 36.6;
if 35.5 < $t < 37.5 {
    say 'You are fine.';
}
else {
    say 'Call a doctor, maybe?';
}
```

You cannot use an `else` block alone. For that, there is a better way: [`unless`](../unless). We look at it very soon.

{% include nav.html %}
