---
title: Solution to 'Boolean tables’
---

{% include menu.html %}

Here is one way to solve the task. The program prints all the results of the Boolean operations.

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

Run the program. It prints this table.

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

Note that you do not need parentheses around the Boolean operations here. This is because of precedence. Precedence is the order in which Raku does operations. The Boolean operations have a higher precedence. So Raku does them first. But with string concatenation, you need the parentheses:

```raku
say 'True && True is ' ~ (True && True);
```

You can also put the code inside the string. This is called [code interpolation](/essentials/strings/code-interpolation).

{% include nav.html %}
