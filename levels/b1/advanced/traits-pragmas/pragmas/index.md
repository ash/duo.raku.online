---
title: Pragmas
---

{% include menu.html %}

A _pragma_ looks like a module that you load with `use`. But it does not bring in any code. Instead, it changes a compilation rule for the rest of the current scope. You turn it on with `use`, and, where it makes sense, off with `no`.

The most important pragma, `strict`, is **on by default** in Raku. It requires you to declare every variable before you use it. This is why Raku catches a typo in a variable name. Without it, the typo would silently create a new variable.

If you turn `strict` off with `no strict`, this rule no longer applies. Then you can assign to a variable that was never declared with `my`:

```raku
no strict;

$x = 42;
say $x; # 42
```

With the default `strict`, this bare `$x = 42` would be a compile-time error. The message is *Variable '$x' is not declared*. The `no strict` line relaxes the rule until the end of the scope around it.

Some other pragmas are `fatal`, `isms` and `variables`. `fatal` turns a quiet failure into a thrown exception. This is useful once you know how to handle exceptions. `isms` allows ways of writing that come from other languages. `variables` lets you adjust the rules for variables. The effect of a pragma is _lexical_. It lasts only until the end of the block where it appears. So you can make a rule stricter or looser. You can do this in exactly the part of code where you need it.

One pragma takes an argument: `lib`. It adds a directory to the list that Raku searches when it loads modules. It does the same as the `-I` command-line option, but inside the program:

```raku
use lib 'lib';
```

You will start using it when you begin to write and load your own [modules](/advanced/modules-basics/using-modules).

{% include nav.html %}
