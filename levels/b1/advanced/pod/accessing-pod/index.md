---
title: Accessing the Pod
---

{% include menu.html %}

Pod can be shown as formatted text. But a program can also read its own Pod from **inside**, while it runs. The special variable `$=pod` holds the Pod of the current file. It is a list of block objects. So a program can look at its own documentation:

```raku
=begin pod
=head1 Hello
A paragraph.
=end pod

say $=pod.elems;      # 1
say $=pod[0].name;    # pod
```

Here, `$=pod` has one element, the `pod` block. You can walk into it and read headings, paragraphs and items as data. Tools that generate documentation, or test that it exists, depend on this. The documentation can be shown with `--doc` or read through `$=pod`. Either way, it is a full part of the program. It is not a comment to be thrown away.

{% include nav.html %}
