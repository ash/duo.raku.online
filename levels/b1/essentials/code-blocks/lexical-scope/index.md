---
title: Lexical scope
---

{% include menu.html %}

A code block creates what is called a lexical scope. If you declare a variable in a block, it is visible inside the block. But it is not visible after the program leaves the block. Here is an example:

```raku
{
    my $x = 42;
    say $x;
}

say $x;
```

The variable `$x` is created in the code block. The first `say $x` prints its value, because the variable is visible inside the block. The second `say $x` fails, because the name `$x` does not exist outside the block. After the block has ended, the name is not known. The program does not compile, and you get an error:

    ===SORRY!=== Error while compiling /Users/ash/raku-course/t.raku
    Variable '$x' is not declared
    at /Users/ash/raku-course/t.raku:6
    ------> say ⏏$x;

{% include nav.html %}
