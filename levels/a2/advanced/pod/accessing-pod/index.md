---
title: Accessing the Pod
---

{% include menu.html %}

You can show Pod as formatted text. But a program can also read its own Pod from **inside**. It does this while it runs. The special variable `$=pod` keeps the Pod of the current file. It is a list of block objects. So a program can look at its own documentation:

```raku
=begin pod
=head1 Hello
A paragraph.
=end pod

say $=pod.elems;      # 1
say $=pod[0].name;    # pod
```

Here, `$=pod` has one element: the `pod` block. You can go inside this block. There, you can read headings, paragraphs and items as data. Some tools make documentation. Other tools test that the documentation is there. All these tools need this. You can show the documentation with `--doc`. Or you can read it through `$=pod`. In both cases, it is a real part of the program. It is not a comment, and Raku does not throw it away.

{% include nav.html %}
