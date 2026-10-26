---
title: The solution of ’A Pod section‘
---

{% include menu.html %}

Here is one way to solve the task.

## Code

```raku
=begin pod

=head1 My Module

This module does something useful.

=end pod

say $=pod[0].contents.elems;
```

🦋 You can find the source code in the file [a-pod-section.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/pod/a-pod-section.raku).

## Output

```
2
```

## Comments

1. `$=pod` has the Pod of the file. It is a list of blocks. `$=pod[0]` is the only `=begin pod` block.

1. Its `.contents` are the blocks inside it: the `=head1` heading and the paragraph. So `.contents.elems` is `2`. A program can go into the structure like this. In this way, it reads its own documentation as data.

{% include nav.html %}
