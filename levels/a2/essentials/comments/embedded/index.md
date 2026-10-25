---
title: Embedded comments
---

{% include menu.html %}

Embedded comments are also called inline comments. They look like multi-line comments. There is only one difference. You put them between other parts of the program. For example:

```raku
my $name;
$name = #`[User input expected here] prompt 'What is your name? ';
say $name;
```

A good syntax highlighter shows code in colours. This helps a lot to see the comments.

{% include nav.html %}
