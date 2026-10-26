---
title: The solution of ’A counter‘
---

{% include menu.html %}

Here is one way to solve the task.

## Code

```raku
class Counter {
    has $.count is rw = 0;
}

my $c = Counter.new;
say $c.count;

$c.count++ for ^5;

say $c.count;
```

🦋 You can find the source code in the file [counter.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/attributes/counter.raku).

## Output

```
0
5
```

## Comments

1. The attribute has `is rw`. So its accessor returns a container that you can write to. `= 0` gives the attribute a start value. The first `say` checks a new counter. It really starts at the default, `0`.

1. You can write to the accessor. So `++` works as you expect. It adds 1 to the count.

{% include nav.html %}
