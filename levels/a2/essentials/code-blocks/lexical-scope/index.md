---
title: Lexical scope
---

{% include menu.html %}

A code block creates a lexical scope. What does this mean? You create a variable in a block. It is visible inside this block. Then the program leaves the block. After that, the variable is not visible. Look at an example:

```raku
{
    my $x = 42;
    say $x;
}

say $x;
```

The variable `$x` is created in the code block. The first `say $x` is inside the block. The variable is visible there. So `say` prints its value. The second `say $x` fails. Outside the block, the name `$x` does not exist. After the end of the block, the program does not know it. The program does not compile. You get an error:

    ===SORRY!=== Error while compiling /Users/ash/raku-course/t.raku
    Variable '$x' is not declared
    at /Users/ash/raku-course/t.raku:6
    ------> say ⏏$x;

{% include nav.html %}
