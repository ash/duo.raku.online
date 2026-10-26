---
title: Pod basics
---

{% include menu.html %}

Pod documentation lives in your source file. Lines that begin with `=` mark where it is. The simplest way is to write it between `=begin pod` and `=end pod`:

```raku
=begin pod

=head1 My Module

This module does something useful.

=end pod
```

Inside the block, directives describe the structure:

* `=head1`, `=head2`, … — headings of different levels
* an ordinary paragraph — just text on its own lines
* `=item` — an item in a list with bullet points

```raku
=begin pod

=head1 Features

=item Fast
=item Small
=item Simple

=end pod
```

The `=head1` line is a top-level heading. The three `=item` lines make a list. Pod sits next to your code but does not change how it works. The compiler ignores it when it runs the program. But when you ask, it can take the Pod out and render it. A later topic shows this.

{% include nav.html %}
