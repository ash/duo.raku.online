---
title: Embedded comments
---

{% include menu.html %}

Embedded, or inline, comments look the same as multi-line comments. The only difference is that they go between other parts of the program. For example:

```raku
my $name;
$name = #`[User input expected here] prompt 'What is your name? ';
say $name;
```

A good syntax highlighter makes the comments much easier to see.

{% include nav.html %}
