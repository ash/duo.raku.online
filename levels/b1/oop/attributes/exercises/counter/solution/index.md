---
title: The solution of ’A counter‘
---

{% include menu.html %}

Here is one possible solution.

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

1. The attribute is declared with `is rw`, so its accessor returns a writable container. `= 0` gives it a starting value. The first `say` shows that a new counter really starts at this default, `0`.

1. The accessor is writable, so `++` can increase it. This works as you would expect.

{% include nav.html %}
