---
title: Debugging Raku programs
---

{% include menu.html %}

You can debug a program in different ways. To debug means to find and fix errors. The simplest way is to print values with `say`. There are also more complex tools. They follow the program step by step. In this section, we look at the useful routine `dd`. It is built into the Rakudo compiler. But it is not part of the Raku language standard.

The name `dd` means _data dumper_. A data dumper prints data for the programmer. `say` and `put` are for the normal output of a program. But `dd` is different. It shows a value in a form for programmers. This form looks like code. It is the same form that the [`.raku`](/advanced/representations/raku-method) method gives. You saw this method in the last section. `dd` prints to the standard error stream. So it does not mix with the output for the user.

{% include nav.html %}
