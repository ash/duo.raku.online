---
title: Solution of ‘The number of command line arguments’
---

{% include menu.html %}

The number of arguments still comes from `@*ARGS.elems`. But this time, we need to do something with it, not just print it. Save the number in a variable. Then choose the right word with a ternary operator:

## Code

```raku
my $n = @*ARGS.elems;
my $word = $n == 1 ?? 'argument' !! 'arguments';
say "You passed $n $word.";
```

🦋 Find the program in the file [number-of-command-line-arguments.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/positionals/number-of-command-line-arguments.raku).

## Output

Test the three interesting cases: no arguments, exactly one, and many. Only the second case uses the singular form.

```console
$ raku exercises/positionals/number-of-command-line-arguments.raku
You passed 0 arguments.

$ raku exercises/positionals/number-of-command-line-arguments.raku solo
You passed 1 argument.

$ raku exercises/positionals/number-of-command-line-arguments.raku one 2 three 4 five 6 seven
You passed 7 arguments.
```

{% include nav.html %}
