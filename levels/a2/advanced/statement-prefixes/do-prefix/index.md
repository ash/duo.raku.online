---
title: do and the value of a block
---

{% include menu.html %}

A block alone is a statement, not an expression. So usually you cannot assign it to a variable. The `do` prefix makes a block an expression. Its value is the value of the **last** statement in the block:

```raku
my $x = do {
    my $a = 3;
    $a + 4;
};

say $x; # 7
```

Inside the block, you can create variables. You can run several statements and compute a result. `do` gives back the value of the block. This is useful when one expression is not enough for a value.

`do` also works before control-flow statements. These statements choose or repeat code. With `do`, they return a value too:

```raku
my $sign = do given 5 {
    when * > 0 { 'positive' }
    when * < 0 { 'negative' }
    default    { 'zero' }
};

say $sign; # positive
```

Here, `do given` makes the whole `given`/`when` an expression. Its value is `positive`. The same works with `do if` and `do for`. In short, `do` lets a block stand where Raku needs a value. It works for control structures too.

{% include nav.html %}
