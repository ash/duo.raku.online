---
title: The solution of ’The order of ENDs‘
---

{% include menu.html %}

Here is one way to solve the task.

## Code

```raku
END say 'first END';
END say 'second END';

say 'body';
```

🦋 You can find the source code in the file [end-order.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/phasers/end-order.raku).

## Output

```
body
second END
first END
```

## Comments

1. Both `END` phasers run after the main code. So the program prints `body` first.

1. Several `END` phasers run in the order “last in, first out”. The `second END` comes later in the code. But it runs before the `first END`. This is like clean-up in real programs. Usually, you must undo the newest setup first.

{% include nav.html %}
