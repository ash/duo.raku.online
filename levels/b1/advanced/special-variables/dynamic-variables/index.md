---
title: Dynamic variables
---

{% include menu.html %}

A _dynamic_ variable has the `*` twigil. A lexical variable is visible only in the block where you declare it. A dynamic variable is different: Raku finds it by looking **outward through the call stack**. It searches the code that called the current code. It does not matter where that code is defined.

```raku
my $*greeting = 'Hello';

sub greet {
    say $*greeting;
}

greet(); # Hello
```

The subroutine `greet` does not declare `$*greeting` or get it as an argument. But it can still see it. This is because the variable is dynamic. Also, `greet` was called from a place where the variable is in scope.

This example would also work with a simple global scalar variable `$greeting`. But the next example shows what makes dynamic variables special.

The lookup follows the call stack. So a closer declaration **overrides** a farther one while its block runs:

```raku
my $*level = 'outer';

sub show {
    say $*level;
}

show(); # outer

{
    my $*level = 'inner';
    show(); # inner
}
```

The same `show` prints `outer` the first time. It prints `inner` when it is called from inside the block that declared `$*level` again. This is _dynamic scoping_. Raku’s built-in `$*OUT`, `$*IN`, and `$*ERR` work in the same way. You can redirect output for a while if you declare `$*OUT` again in a block. Then every routine that you call inside the block sees the new value. Dynamic variables are great for passing context to called code without an explicit argument.

{% include nav.html %}
