---
title: Solution to 'Double negation’
---

{% include menu.html %}

To solve the second part of the exercise, let us extend the program. We can use the same variable again:

## Code

```raku
my $value = False;
say !!$value;

$value = True;
say !!$value;
```

🦋 You can find the full code in the file [double-negation.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/booleans/double-negation.raku).

## Comments

Before you run the program, let us think about what it will print. There are two negation operators before the variable. They work as two separate negations. In the first case, the value changes from `False` to `True`. Then it changes straight back from `True` to `False`. The second case works the same way. After two negations, we get the original Boolean value.

## Output

The program prints the following output, which shows that we were right:

```console
$ raku exercises/booleans/double-negation.raku
False
True
```

{% include nav.html %}
