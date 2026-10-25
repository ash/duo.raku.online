---
title: Solution to 'Boolean tables’
---

{% include menu.html %}

Here is one possible program. It prints the results of all the Boolean operations.

## Code

```raku
say 'True && True is ', True && True; 
say 'True && False is ', True && False;
say 'False && True is ', False && True;
say 'False && False is ', False && False;

say 'True || True is ', True || True; 
say 'True || False is ', True || False;
say 'False || True is ', False || True;
say 'False || False is ', False || False;

say 'True ^^ True is ', True ^^ True; 
say 'True ^^ False is ', True ^^ False;
say 'False ^^ True is ', False ^^ True;
say 'False ^^ False is ', False ^^ False;
```

🦋 You can find the full code in the file [tables.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/booleans/tables.raku).

## Output

When you run the program, it prints the following table.

```console
$ raku tables.raku
True && True is True
True && False is False
False && True is False
False && False is False
True || True is True
True || False is True
False || True is True
False || False is False
True ^^ True is Nil
True ^^ False is True
False ^^ True is True
False ^^ False is False
```

## Comments

Note that the Boolean operations do not need parentheses here. They have a higher precedence. But this is not true if you use string concatenation:

```raku
say 'True && True is ' ~ (True && True);
```

Another way is to use [code interpolation](/essentials/strings/code-interpolation).

{% include nav.html %}
