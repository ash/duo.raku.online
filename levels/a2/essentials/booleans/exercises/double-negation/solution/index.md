---
title: Solution to 'Double negation’
---

{% include menu.html %}

Let's add code for the second part of the task. We use the same variable again:

## Code

```raku
my $value = False;
say !!$value;

$value = True;
say !!$value;
```

🦋 You can find the full code in the file [double-negation.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/booleans/double-negation.raku).

## Comments

Do not run the program yet. First, let's think: what does it print? There are two negation operators before the variable. A negation changes `False` to `True` and `True` to `False`. Here, the two `!` work as two separate negation operators. In the first case, the first negation changes `False` to `True`. Then the second negation changes it back to `False` at once. The second case works in the same way. After two negations, we get the Boolean value from the start.

## Output

Here is the output of the program. It shows that we were right:

```console
$ raku exercises/booleans/double-negation.raku
False
True
```

{% include nav.html %}
