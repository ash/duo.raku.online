---
title: Multi-line comments
---

{% include menu.html %}

If your comment is longer than one line, you have a choice. You can write a few single-line comments or one multi-line comment.

Multi-line comments start with two characters: ``#` ``. After them comes a pair of opening and closing characters: `( )`, `{ }`, `[ ]` or `< >`. You can also repeat them, for example, `(( ))`, `[[[ ]]]` and so on.

For example:

```raku
my $name;
#`( We are going to ask the user
to enter their name first and then
save the input in a variable. )

$name = prompt 'What is your name? ';
#`{ The program now waits
until the user enters the name
and presses Enter. }

say $name; #`( And now we can print it )
```

{% include nav.html %}
