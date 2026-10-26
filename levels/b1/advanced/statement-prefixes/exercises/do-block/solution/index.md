---
title: The solution of ’The value of a do block‘
---

{% include menu.html %}

Here is one possible solution.

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

1. A plain `if` is a statement, and you cannot use its value. The `do` prefix turns the whole `if`/`else` into an expression.

1. `7 > 5` is true, so the expression gives `'big'`, and this value is assigned to `$label`. The same trick works with `do given` and `do for`.

1. The `{ }` braces are not optional. In Raku, `if` always takes a block. So you cannot shorten the branches to `if 7 > 5 'big' else 'small'`. This fails to compile with the error *Missing block*.

{% include nav.html %}
