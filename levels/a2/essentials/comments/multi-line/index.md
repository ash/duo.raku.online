---
title: Multi-line comments
---

{% include menu.html %}

Sometimes a comment is longer than one line. Then you have two choices. You can write a few single-line comments. Or you can write one multi-line comment.

A multi-line comment starts with two characters: ``#` ``. Then comes a pair of brackets: `( )`, `{ }`, `[ ]` or `< >`. You can also repeat them: `(( ))`, `[[[ ]]]` and so on.

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
