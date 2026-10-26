---
title: Calling with a colon
---

{% include menu.html %}

Usually, the arguments of a method or a subroutine are in parentheses: `@a.grep(* > 5)`. Raku has a second way. Put a **colon** after the name. Everything after the colon becomes the list of arguments. You need no parentheses at all:

```raku
say (1..10).grep: * %% 2; # (2 4 6 8 10)
```

The colon in `grep:` does the same work as parentheses. `(1..10).grep: * %% 2` means exactly the same as `(1..10).grep(* %% 2)`. You can use either form:

```raku
say <a b c>.join('-'); # a-b-c
say <a b c>.join: '-'; # a-b-c
```

The colon form is nicest with some methods. They take a **block** or a [Whatever](/advanced/whatever) expression. The colon removes one level of brackets. Compare:

```raku
my @a = 3, 1, 2;

say @a.sort({ $^b <=> $^a }); # parentheses around the block
say @a.sort: { $^b <=> $^a }; # colon — no closing paren to match
```

Both lines print `(3 2 1)`. But the version with the colon is easier to read. This is even more true for a long block.

You already know calls without parentheses. You use them with list operators, like `say 1, 2, 3`. There, `say` takes everything after it as its arguments. The colon form is the same idea for methods. Remember one rule. The colon form takes the **rest of the statement** as arguments. So it must be at the **end** of a chain of calls. That is why `('a' .. 'z')».uc».ord.grep: 60 < * < 70` works. `grep` is the last call. Nothing comes after it in the chain. Do you need to call more methods? Then use the form with parentheses. Or group the parts of the whole expression with parentheses. This makes the code clear:

```raku
say (('a' .. 'z')».uc».ord.grep: 60 < * < 70)».chr # (A B C D E)
```

Be careful with one thing. Do not use the colon **and** parentheses together, like `.grep:( … )`. In Raku, `:( … )` means something else. It is a signature, written as a value. So Raku cannot read this code. Use either `.grep( … )` or `.grep: …`. Use one of them, not both.

{% include nav.html %}
