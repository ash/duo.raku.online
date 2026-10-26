---
title: Debugging Raku programs
---

{% include menu.html %}

There are different ways to debug a program. You can simply print values with `say`. Or you can use more advanced tools that trace the program. In this section, we look at the useful `dd` routine. It comes with the Rakudo compiler, but the Raku language standard does not include it.

The name `dd` stands for _data dumper_. The routines `say` and `put` are for the normal output of a program. But `dd` prints a value in a form that is useful for developers. This is the same code-like form that you get from the [`.raku`](/advanced/representations/raku-method) method. We saw this method in the previous section. `dd` prints to the standard error stream. So its output does not mix with what your program prints for the user.

{% include nav.html %}
