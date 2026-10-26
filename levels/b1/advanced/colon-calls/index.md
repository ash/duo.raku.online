---
title: Calling with a colon
---

{% include menu.html %}

When you call a method or a subroutine, you usually put its arguments in parentheses: `@a.grep(* > 5)`. Raku also has a second form. You put a **colon** after the name. Then everything after it becomes the list of arguments. You need no parentheses at all:

```raku
say (1..10).grep: * %% 2; # (2 4 6 8 10)
```

The colon in `grep:` does the same job as the parentheses. So `(1..10).grep: * %% 2` means exactly `(1..10).grep(* %% 2)`. You can always use one form instead of the other:

```raku
say <a b c>.join('-'); # a-b-c
say <a b c>.join: '-'; # a-b-c
```

The colon form is nicest with methods that take a **block** or a [Whatever](/advanced/whatever) expression. This is because it removes one level of brackets inside brackets. Compare:

```raku
my @a = 3, 1, 2;

say @a.sort({ $^b <=> $^a }); # parentheses around the block
say @a.sort: { $^b <=> $^a }; # colon — no closing paren to match
```

Both lines print `(3 2 1)`, but the colon version is easier to read. This is especially true when the block is long.

You already use calls without parentheses with list operators, like `say 1, 2, 3`. There, `say` takes everything after it as its arguments. The colon form is the same thing for method calls. There is one rule to remember. The colon form takes the **rest of the statement** as its arguments. So it must come at the **end** of a chain of calls. That is why `('a' .. 'z')».uc».ord.grep: 60 < * < 70` works. Here, `grep` is the last call, and nothing is chained after it. If you need to call more methods, use the form with parentheses instead. Or group the parts of the whole expression to make it clear:

```raku
say (('a' .. 'z')».uc».ord.grep: 60 < * < 70)».chr # (A B C D E)
```

There is one thing to be careful about. Do not use the colon **and** parentheses together, as in `.grep:( … )`. This clashes with `:( … )`, the syntax for a signature literal. So Raku cannot read the code. Use either `.grep( … )` or `.grep: …`. Use one or the other, not both.

{% include nav.html %}
