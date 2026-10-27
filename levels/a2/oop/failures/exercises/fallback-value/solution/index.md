---
title: The solution of ’A fallback value‘
---

{% include menu.html %}

Here is one way to solve the task.

## Code

```raku
sub get($x) {
    fail 'bad' if $x == 0;
    return $x;
}

say get(5) // 'default';
say get(0) // 'default';
```

🦋 You can find the source code in the file [fallback-value.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/failures/fallback-value.raku).

## Output

```
5
default
```

## Comments

1. `get(5)` returns `5` as usual. So `//` keeps this value.

1. `get(0)` returns a `Failure`. A `Failure` is a value with an error inside. It is undefined. So `//` uses the fallback, `'default'`. `//` handles the undefined `Failure` quietly. It does not throw an exception.

{% include nav.html %}
