---
title: Pod basics
---

{% include menu.html %}

Pod documentation is in your source file. Special lines mark it. These lines start with `=`. The simplest way is a block of Pod. Put it between `=begin pod` and `=end pod`:

```raku
=begin pod

=head1 My Module

This module does something useful.

=end pod
```

Inside the block, directives show the structure of the text:

* `=head1`, `=head2`, … — headings of different levels
* a normal paragraph — just text on its own lines
* `=item` — one item in a list with bullet points

```raku
=begin pod

=head1 Features

=item Fast
=item Small
=item Simple

=end pod
```

The `=head1` line is a top-level heading. The three `=item` lines make a list. Pod is next to your code. But it does not change the code. The compiler skips the Pod when it runs the program. But the compiler can also take out the Pod. Then it shows the Pod as text. It does this when you ask. A later topic shows this.

{% include nav.html %}
