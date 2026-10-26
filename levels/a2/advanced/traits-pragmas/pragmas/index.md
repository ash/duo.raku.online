---
title: Pragmas
---

{% include menu.html %}

A _pragma_ looks like a module. You load it with `use`. But it does not bring in new code. Instead, it changes a rule of compilation. The change works until the end of the current scope. You turn a pragma on with `use`. If it makes sense, you can turn it off with `no`.

The most important pragma is `strict`. In Raku, it is **on by default**. With it, you must declare every variable before you use it. So Raku finds typing mistakes in variable names. A wrong name does not quietly make a new variable.

`no strict` turns `strict` off. Then this rule is gone. Now you can assign a value to a variable without `my`:

```raku
no strict;

$x = 42;
say $x; # 42
```

With the normal `strict`, this `$x = 42` without `my` is an error. Raku shows it at compile time: *Variable '$x' is not declared*. The line `no strict` turns this rule off. This lasts until the end of the scope.

There are other pragmas too. `fatal` makes a quiet failure throw an exception. This is useful after you learn how to handle exceptions. `isms` allows some typical ways of writing code from other languages. `variables` changes the rules for variables. The effect of a pragma is _lexical_. It works only until the end of its block. So you can make a rule stricter or less strict. You can do this just where you need it in the code.

One pragma takes an argument. It is `lib`. Raku looks for modules in a list of directories. `lib` adds a directory to this list. It works like the command-line option `-I`. But you write it inside the program:

```raku
use lib 'lib';
```

You will need it when you write and load your own [modules](/advanced/modules-basics/using-modules).

{% include nav.html %}
