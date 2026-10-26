---
title: do and the value of a block
---

{% include menu.html %}

A block on its own is a statement, not an expression. So normally you cannot assign it to a variable. The `do` prefix turns a block into an expression. Its value is the value of the block's **last** statement:

```raku
my $x = do {
    my $a = 3;
    $a + 4;
};

say $x; # 7
```

Inside the block, you can declare variables, run several statements and compute a result. Then `do` returns the value of the block. This is useful when you need more than one expression to get a value.

`do` also works in front of control-flow statements. Then they can return a value too:

```raku
my $sign = do given 5 {
    when * > 0 { 'positive' }
    when * < 0 { 'negative' }
    default    { 'zero' }
};

say $sign; # positive
```

Here `do given` turns the whole `given`/`when` into an expression with the value `positive`. The same works with `do if` and `do for`. In short, `do` lets you use a block where a value is expected. This also works for a control structure.

{% include nav.html %}
