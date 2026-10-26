---
title: The solution of ’Dump a hash‘
---

{% include menu.html %}

Here is one way to solve the task.

## Code

```raku
my %h = beta => 2, alpha => 1;
dd %h;
```

🦋 You can find the source code in the file [dump-a-hash.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/dd/dump-a-hash.raku).

## Output

```
{:alpha(1), :beta(2)}
```

## Comments

1. `dd` prints the hash in a form like code. Each pair looks like `:key(value)`.

1. The keys come out in sorted order. So `alpha` comes before `beta`. But in the code, `beta` is first.

{% include nav.html %}
