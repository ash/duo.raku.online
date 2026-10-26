---
title: The solution of ’A writable parameter‘
---

{% include menu.html %}

Here is one way to solve the task.

## Code

```raku
sub double($n is rw) {
    $n *= 2;
}

my $score = 21;
double($score);
say $score;
```

🦋 You can find the source code in the file [writable-parameter.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/traits-pragmas/writable-parameter.raku).

## Output

```
42
```

## Comments

1. `is rw` connects the parameter `$n` to the variable `$score` of the caller. So `$n *= 2` inside `double` changes `$score` itself. This is why the program prints `42`.

1. Without `is rw`, the parameter is read-only. Then `$n *= 2` gives an error. With `is copy`, `double` gets its own copy of the value. It can change this copy. But `$score` stays `21`.

{% include nav.html %}
