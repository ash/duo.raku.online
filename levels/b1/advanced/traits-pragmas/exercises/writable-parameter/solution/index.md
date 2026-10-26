---
title: The solution of ’A writable parameter‘
---

{% include menu.html %}

Here is one possible solution.

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

1. `is rw` binds the parameter `$n` to the caller’s variable `$score`. So `$n *= 2` inside `double` changes `$score` itself, and this is why the program prints `42`.

1. Without `is rw`, the parameter would be read-only, and `$n *= 2` would cause an error. With `is copy` instead, `double` would get a private copy to change. Then `$score` would stay untouched at `21`.

{% include nav.html %}
