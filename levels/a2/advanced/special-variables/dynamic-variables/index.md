---
title: Dynamic variables
---

{% include menu.html %}

A _dynamic_ variable has the twigil `*`. A normal, lexical variable is visible only in its own block. You declare it in this block. A dynamic variable is different. Raku looks for it **through the call stack**. It looks at the code that called the current code. Then it goes one step further back, and so on. It does not matter where the current code is written.

```raku
my $*greeting = 'Hello';

sub greet {
    say $*greeting;
}

greet(); # Hello
```

The subroutine `greet` does not declare `$*greeting`. It does not get it as an argument. But it can still see it. The variable is dynamic. And the variable is visible where the program calls `greet`.

This example also works with a simple global scalar variable `$greeting`. The next example shows what is special about dynamic variables.

Raku looks for the variable through the call stack. So a closer declaration **overrides** a farther one. This means that Raku uses the closer one. This lasts while its block runs:

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

The same `show` prints `outer` the first time. The second time, it prints `inner`. This time, the program calls `show` from inside the block. This block declares `$*level` again. This is _dynamic scoping_. Raku’s built-in `$*OUT`, `$*IN`, and `$*ERR` work in this way. For example, you can declare `$*OUT` again in a block. Then the output goes to a new place for a while. Every routine that you call in the block sees the new value. Dynamic variables are great for information that the called code needs. You do not have to pass this information as an argument.

{% include nav.html %}
