---
title: The solution of ’The value of a do block‘
---

{% include menu.html %}

Here is one way to solve the task.

## Code

```raku
my $label = do if 7 > 5 { 'big' } else { 'small' };

say $label;
```

🦋 You can find the source code in the file [do-block.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/statement-prefixes/do-block.raku).

## Output

```
big
```

## Comments

1. A plain `if` is a statement. It has no value that you can use. The `do` prefix makes the whole `if`/`else` an expression.

1. `7 > 5` is true. So the value of the expression is `'big'`. The program assigns it to `$label`. The same trick works with `do given` and `do for`.

1. You must write the `{ }` braces. In Raku, `if` always needs a block. So you cannot make the branches shorter, like `if 7 > 5 'big' else 'small'`. This code does not compile. The error is *Missing block*.

{% include nav.html %}
