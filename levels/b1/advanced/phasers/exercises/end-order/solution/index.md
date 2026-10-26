---
title: The solution of ’The order of ENDs‘
---

{% include menu.html %}

Here is one possible solution.

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

1. Both `END` phasers run after the main code, so the program prints `body` first.

1. Several `END` phasers run last in, first out. The `second END` is declared later, so it runs before the `first END`. This is like clean-up, which usually has to undo the most recent setup first.

{% include nav.html %}
